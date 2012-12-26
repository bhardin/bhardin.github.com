## Strated with https://github.com/plusjade/jekyll-bootstrap/blob/master/Rakefile
require 'rubygems'
require 'rake'

# Where our Bootstrap source is installed. Can be overridden by an environment variable.
BOOTSTRAP_SOURCE = ENV['BOOTSTRAP_SOURCE'] || File.expand_path("~/Documents/projects/bootstrap")

# Where to find our custom LESS file.
BOOTSTRAP_CUSTOM_LESS = 'bootstrap/less/custom.less'

SOURCE = "."
CONFIG = {
  'posts' => File.join(SOURCE, "_posts"),
}

desc "Create Sass"
task :sass do
  "sass --watch _sass:assets/css"
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
    post.puts "tags: []"
    post.puts "meta_description: "
    post.puts "---"
  end
end # task :post



# Twitter Bootstrap
# * If any of the Javascript files in the Bootstrap directory has changed, 
#   copy it to the local Jekyll bootstrap directory, minifying it with the 
#   Ruby Uglifier gem.
# * Generate a partial (in the Jekyll _includes directory) that contains 
#   <script> tags for all the Bootstrap Javascript files. Then, my layouts 
#   can simply include that file.
# * Bootstrap’s CSS files are actually written using the LESS language. If 
#   any of the Bootstrap LESS files has changed, copy it to the local Jekyll 
#   directory.
# * Compile all the LESS files (including a local custom.less that contains my
#   CSS overrides) into one bootstrap.min.css file.

desc "Creates custom bootstrap files"
task :bootstrap => [:bootstrap_js, :bootstrap_css]

desc "Creates custom bootstrap.js"
task :bootstrap_js do
  require 'uglifier'
  require 'erb'

  template = ERB.new %q{
  <!-- AUTOMATICALLY GENERATED. DO NOT EDIT. -->
  <% paths.each do |path| %>
  <script type="text/javascript" src="/bootstrap/js/<%= path %>"></script>
  <% end %>
  }

  paths = []
  minifier = Uglifier.new
  Dir.glob(File.join(BOOTSTRAP_SOURCE, 'js', '*.js')).each do |source|
    base = File.basename(source).sub(/^(.*)\.js$/, '\1.min.js')
    paths << base
    target = File.join('bootstrap/js', base)
    if different?(source, target)
      File.open(target, 'w') do |out|
        out.write minifier.compile(File.read(source))
      end
    end
  end

  File.open('_includes/bootstrap.js.html', 'w') do |f|
    f.write template.result(binding)
  end
end

desc "Creates custom bootstrap.css"
task :bootstrap_css do |t|
  puts "Copying LESS files"
  Dir.glob(File.join(BOOTSTRAP_SOURCE, 'less', '*.less')).each do |source|
    target = File.join('bootstrap/less', File.basename(source))
    cp source, target if different?(source, target)
  end

  puts "Compiling #{BOOTSTRAP_CUSTOM_LESS}"
  sh 'lessc', '--compress', BOOTSTRAP_CUSTOM_LESS, 'bootstrap/css/bootstrap.min.css'
end

task :default => :jekyll

task :jekyll => :bootstrap do
  sh 'jekyll', '--server'
end


# Determines if two files are different
def different?(path1, path2)
  require 'digest/md5'
  different = false
  if File.exist?(path1) && File.exist?(path2)
    path1_md5 = Digest::MD5.hexdigest(File.read path1)
    path2_md5 = Digest::MD5.hexdigest(File.read path2)
    (path2_md5 != path1_md5)
  else
    true
  end
end

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end
