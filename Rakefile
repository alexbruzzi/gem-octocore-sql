require 'active_record'
require 'yaml'
require 'redis'
require 'rspec/core/rake_task'
require 'octocore-mysql/config'

RSpec::Core::RakeTask.new('spec')

task :environment do
  config_dir = ENV['CONFIG_DIR'] || 'lib/octocore-mysql/config/'
  config = {
    mysql: {
      host: '127.0.0.1',
      user: 'root',
      password: 'pass',
      database: 'octo'
    }
  }
  # config = {}
  # Dir[config_dir + '**{,/*/**}/*.yml'].each do |file|
  #   _config = YAML.load_file(file)
  #   if _config
  #     puts "loading from file: #{ file }"
  #     config = config.merge(_config.deep_symbolize_keys!)
  #   end
  # end
  Octo.load_config config

  mysql_config = Octo.get_config(:mysql)
  puts mysql_config
  ActiveRecord::Base.establish_connection(
    adapter: "mysql2",
    host: mysql_config[:host],
    username: mysql_config[:user],
    password: mysql_config[:password],
    database: mysql_config[:database]
  )

  ActiveRecord::Base.logger = 
    Logger.new(File.open('database.log', 'a'))
end

namespace :octo do

  desc "Migrate the database through scripts in lib/octocore-mysql/migrations. 
      Target specific version with VERSION=x"
  task :reset => :environment do
    clear_cache
    ActiveRecord::Migrator.migrate('lib/octocore-mysql/migrations', 
      ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  end

  desc "Migrate the database through scripts in lib/octocore-mysql/migrations. 
      Target specific version with VERSION=x"
  task :migrate => :environment do
    ActiveRecord::Migrator.migrate('lib/octocore-mysql/migrations', 
      ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  end
end

# Clear Cache
def clear_cache
  default_cache = {
    host: '127.0.0.1', port: 6379
  }
  redis = Redis.new(default_cache.merge(driver: :hiredis))
  redis.flushall
  puts 'Cache Cleaned'
end