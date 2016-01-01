require 'rubygems'
require 'rake'

SOURCE = "."
CONFIG = {
  post_directory: File.join(SOURCE, "_posts"),
  categories: [:mixtape, :blog, :review, :presentation, :adventure],
  goodreads_api_key: ENV['GOODREADS_API_KEY'],
  goodreads_api_secret: ENV['GOODREADS_API_SECRET'],
  goodreads_user_id: ENV['GOODREADS_USER_ID']
}

Dir.glob('lib/tasks/**/*.rake').each { |r| load r }

task :default => :spec
