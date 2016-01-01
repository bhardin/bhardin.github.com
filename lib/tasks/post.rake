require_relative '../models/post'
categories = CONFIG[:categories]

desc "Create a generic post in #{CONFIG[:post_directory]}"
task :post do
  create_post('post')
end

namespace :post do
  categories.each do |category|
    desc "Create a new #{category} post in #{CONFIG[:post_directory]}"
    task category do
      create_post(category)
    end
  end
end

def create_post(category)
  abort("rake aborted: '#{CONFIG[:post_directory]}' directory not found.") unless FileTest.directory?(CONFIG[:post_directory])

  title = ENV["title"] || "new-#{category}"
  filename = File.join(CONFIG[:post_directory], Post.filename(title))
  if File.exist?(filename)
    fail("#{filename} already exists.")
  end
  file = File.open(filename, 'w')

  post = Post::Post.new({
    title: title,
    category: category.to_s + 's'
  })

  post.write(file)
end