namespace :build do
  desc "Creates all css files needed"
  task :css do
    system("grunt --gruntfile bower_components/bootstrap/Gruntfile.js")
    system("cp bower_components/bootstrap/dist/css/bootstrap.min.css assets/css")
  end

  desc "Create the 404.html page and commit to git"
  task "404" do
    puts "[*] Running jekyll to create the 404.html page from 404.md".green
    system("jekyll build")
    puts "[*] Copying 404 page."
    system("cp _site/404.html .")
    puts "[*] Adding 404.html to git"
    system("git add 404.html")
    puts "[*] Committing 404.html"
    system("git commit -m 'Updating 404.html'")
  end
end
