require "bundler/gem_tasks"
require "rake/testtask"

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.verbose = false
  t.test_files = FileList['spec/**/*_spec.rb']
end
