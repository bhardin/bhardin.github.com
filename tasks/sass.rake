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