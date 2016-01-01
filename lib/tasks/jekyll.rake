require_relative '../models/post'

desc "Jekyll Commands"
namespace :jekyll do
  desc "Will start Jekyll while watching for changes"
  task :start do
    system("jekyll serve --watch")
  end

  desc "Use this if you change permalink structure"
  task :redirects do
    old_files = Rake::FileList["#{SOURCE}/_posts/*.md"]

    old_files.each do |file|
      year, month, day, *title = file.split('/').last.split('-')
      title = title.join('-').split('.').first
      date = Time.new(year, month, day)

      old_permalink = "/#{year}/#{month}/#{title}/"
      new_permalink = "/post/#{title}/"

      yml_options = {
        layout: 'redirected',
        sitemap: false,
        permalink: old_permalink,
        redirect_to: new_permalink
      }

      new_filename = "2000-01-01-redirect-#{title}.md"
      newfile = File.open(new_filename, 'w')
      p = Post::Empty.new(yml_options)
      p.write(newfile)
    end
  end
end

desc 'Check links for site already running on localhost:4000'
task :check_links do
  begin
    require 'anemone'

    root = 'http://localhost:4000/'
    puts "Checking links with anemone ... "
    # check-links --no-warnings http://localhost:4000
    Anemone.crawl(root, :discard_page_bodies => true) do |anemone|
      anemone.after_crawl do |pagestore|
        broken_links = Hash.new { |h, k| h[k] = [] }
        pagestore.each_value do |page|
          if page.code != 200
            referrers = pagestore.pages_linking_to(page.url)
            referrers.each do |referrer|
              broken_links[referrer] << page
            end
          else
            puts "OK #{page.url}"
          end
        end
        puts "\n\nLinks with issues: "
        broken_links.each do |referrer, pages|
          puts "#{referrer.url} contains the following broken links:"
          pages.each do |page|
            puts "  HTTP #{page.code} #{page.url}"
          end
        end
      end
    end
    puts "... done!"

  rescue LoadError
    abort 'Install anemone gem: gem install anemone'
  end
end