require "bundler/gem_tasks"
require "cucumber/rake/task"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

desc "Run tests, both RSpec and Cucumber"
task :test => [:spec, :cucumber]

task :default => :test
