require './config/environment'
require 'sequel'

class Migrator
  Sequel.extension :migration

  def self.migrate!
    db = Sequel.connect(Lotus::Model.configuration.adapter.uri)
    Sequel::Migrator.apply(db, "./db/migrations")
  end
end
