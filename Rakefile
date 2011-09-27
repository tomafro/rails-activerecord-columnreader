require 'bundler/gem_tasks'
require "rspec/core/rake_task"

Bundler.setup :development

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "-f n -c"
  t.pattern = "spec/**/*_spec.rb"
end

task :default => :spec