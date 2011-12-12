# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

OnTheSpotTester::Application.load_tasks

if Rails.env.development?
  require 'rake/version_task'
  Rake::VersionTask.new do |task|
    task.with_git_tag = true
  end
end