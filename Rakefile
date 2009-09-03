# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'
require 'metric_fu'

namespace :test do
  desc 'Measures test coverage'
  task :coverage do
    rm_f "coverage"
    rm_f "coverage.data"
    
    rcov = "rcov --sort coverage -Itest --rails --aggregate coverage.data -x \" rubygems/*,/Library/Ruby/Site/*,gems/*,rcov*\""
    
    system("#{rcov} --no-html test/unit/*")
    system("#{rcov} --no-html test/functional/*.rb")
    system("#{rcov} --html test/functional/admin/*.rb")
    
    system("open coverage/index.html") if PLATFORM['darwin']
    
  end
end
