require "rake/testtask"

task :default => :spec

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["spec/*_spec.rb"]
end
