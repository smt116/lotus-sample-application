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
    system("psql -U #{ENV['POSTGRESQL_USER']} -d template1 -c 'CREATE DATABASE \"#{ENV['POSTGRESQL_DATABASE']}\";'")
  end

  task :drop do
    system("psql -U #{ENV['POSTGRESQL_USER']} -d template1 -c 'DROP DATABASE \"#{ENV['POSTGRESQL_DATABASE']}\";'")
  end

  task :migrate do
    Migrator.migrate!
  end

  task seed: :migrate do
    load 'db/seeds.rb'
  end

  task :clean do
    PostRepository.clear
  end

  task :setup do
  end
end
