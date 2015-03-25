require 'colorator'

namespace :deploy do
  desc "Create the 404.html page and commit to git"
  task "404" do
    puts "[*] Running jekyll to create the 404.html page from 404.md".green
    system("jekyll build")
    puts "[*] Copying 404 page.".green
    system("cp _site/404.html .")
    puts "[*] Adding 404.html to git".green
    system("git add 404.html")
    puts "[*] Committing 404.html".green
    system("git commit -m 'Updating 404.html'")
  end
end

desc "Run all tasks required for deploy"
task :deploy => ["deploy:404"]
