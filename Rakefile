require "rake/testtask"

task :default => :spec

Rake::TestTask.new do |t|
  t.libs << "spec"
  t.test_files = FileList["spec/**/*_spec.rb"]
  t.verbose = true
end
