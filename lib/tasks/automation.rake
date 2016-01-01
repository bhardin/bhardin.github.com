namespace :automation do
  desc "Generate posts from all external sources"
  task :update do
    Rake::Task["goodreads:update"].invoke
  end
end
