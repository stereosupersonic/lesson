# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Lesson::Application.load_tasks


desc "start the local server"
task :start_server do
  port = 3000

  cmd = "bundle exec thin start -p #{port}"
  puts cmd
  system "#{cmd}"
  puts "http://localhost:#{port}"
end
