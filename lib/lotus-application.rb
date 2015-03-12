require 'lotus/model'
Dir["#{ __dir__ }/lotus-application/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/lotus-application_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/lotus-application_development.db'
  #    adapter type: :sql, uri: 'postgres://localhost/lotus-application_development'
  #    adapter type: :sql, uri: 'mysql://localhost/lotus-application_development'
  #
  adapter type: :sql, uri: "postgres://#{ENV['POSTGRESQL_USER']}:#{ENV['POSTGRESQL_PASSWORD']}@#{ENV['POSTGRESQL_HOST']}:5432/#{ENV['POSTGRESQL_DATABASE']}"


  ##
  # Database mapping
  #
  # You can specify mapping file to load with:
  #
  mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
end.load!
