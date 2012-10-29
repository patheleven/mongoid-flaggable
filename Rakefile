require 'rake/testtask'
require 'bundler/gem_tasks'

Rake::TestTask.new do |test_task|
  test_task.libs.push 'spec'
  test_task.name = 'spec'
  test_task.pattern = 'spec/**/*_spec.rb'
  test_task.verbose = true
end

task default: :spec

