require 'rubygems'
require 'rake'

SOURCE = "."
CONFIG = {
  'posts' => File.join(SOURCE, "_posts"),
}

desc "Create Sass"
namespace :sass do
  desc "Will build CSS the way it should be in production"
  task :deploy do
    system("sass -t compressed -f --update _sass:assets/css")
  end

  desc "Will watch for changes and update when changes are made"
  task :watch do
    system("sass --watch _sass:assets/css")
  end
end

desc "Deploy"
task :deploy do
  puts "Writing Sass"
  Rake::Task["sass:deploy"].invoke
end

# Usage: rake post title="A Title"
desc "Begin a new post in #{CONFIG['posts']}"
task :post do
  abort("rake aborted: '#{CONFIG['posts']}' directory not found.") unless FileTest.directory?(CONFIG['posts'])
  title = ENV["title"] || "new-post"
  slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  filename = File.join(CONFIG['posts'], "#{Time.now.strftime('%Y-%m-%d')}-#{slug}.md")
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end

  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: \"#{title.gsub(/-/,' ')}\""
    post.puts "image: "
    post.puts "image_credit: "
    post.puts "image_credit_url: "
    post.puts "tags: []"
    post.puts "meta_description: "
    post.puts "---"
  end
end # task :post

desc "Counts the number of words written"
task :count_words do |t|
  total_words = 0

  puts "Counting Words in #{CONFIG['posts']}"
  abort("rake aborted: '#{CONFIG['posts']}' directory not found.") unless FileTest.directory?(CONFIG['posts'])

  Dir.glob(File.join(CONFIG['posts'], '*')).each do |filename|
    # puts "Counting words in #{filename}"
    f = File.new(filename)
    total_words += f.read.scan(/\w+/).size
    #puts post.scan(/\w+/).size
  end

  puts "Total Words Written: #{total_words}"
end