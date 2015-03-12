require 'rake'
require 'rake/testtask'

require_relative 'lib/migrator'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
end

task default: :test
task spec: :test

namespace :db do
  task :create do
  end

  task :migrate do
    Migrator.migrate!
  end

  task seed: :migrate do
    load 'db/seeds.rb'
  end
end
