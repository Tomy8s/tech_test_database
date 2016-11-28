require 'data_mapper'
require 'dm-postgres-adapter'

class HashData
  include DataMapper::Resource

  property :id, Serial
  property :hash_key, String
  property :hash_value, String
  
  DataMapper.setup(:default, "postgres:///hash_data_#{ENV['RACK_ENV']}")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end