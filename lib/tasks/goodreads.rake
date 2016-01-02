require 'goodreads'
require 'reverse_markdown'
require_relative '../models/post'

desc "Creates posts for goodreads reviews"
namespace :goodreads do
  task :update do
    client = Goodreads::Client.new(
      api_key:    CONFIG[:goodreads_api_key],
      api_secret: CONFIG[:goodreads_api_secret]
    )

    reviews = client.reviews(id: CONFIG[:goodreads_user_id], shelf: 'read')

    reviews.each do |r|
      next if r.body.strip.empty?

      options = {}
      image_url = r.book.image_url

      options[:title]           = r["book"]["title"]
      options[:rating]          = r.rating
      options[:body]            = r.body
      options[:author]          = r.book.authors["author"]["name"]
      options[:small_image_url] = r.book.small_image_url
      options[:image_url] = r.book.image_url.gsub(/\/([0-9]+)m\//, '/\1l/')

      date = r.date_updated
      filename = File.join(CONFIG[:post_directory], Post.filename(options[:title], date))
      file = File.open(filename, 'w')

      p = Post::Review.new(options)
      p.write(file)
    end
  end
end