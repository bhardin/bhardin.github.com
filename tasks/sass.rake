desc "Create Sass"
namespace :sass do
  desc "Build CSS the way it is used in production"
  task :deploy do
    system("sass -t compressed -f --update _sass:assets/css")
  end

  desc "Watch for changes to SCSS files and update when changes are made"
  task :watch do
    system("sass --watch _sass:assets/css")
  end
end

desc "Build sass files"
task :sass => ["sass:deploy"]