ENV['RACK_ENV'] ||= 'development'
require 'sinatra'
require_relative 'HashData.rb'

class Database < Sinatra::Base
  get '/set' do
    HashData.create(hash_key: params.keys[0], hash_value: params.values[0])
    redirect "/get?key=#{params.keys[0]}"
  end

  get '/get' do
    HashData.first(hash_key: params[:key]).hash_value
  end

  set :port, 4000
  run! if app_file == $0
end