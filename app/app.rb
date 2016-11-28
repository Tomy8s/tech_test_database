ENV['RACK_ENV'] ||= 'development'
require 'sinatra'
require_relative 'HashData.rb'

class Database < Sinatra::Base

  get '/' do
  end

  get '/set' do
    "Hello"
    HashData.create(hash_key: params.keys[0], hash_value: params.values[0])
    redirect '/get'
  end

  get '/get' do
    "#{params[:key]}"
  end

  set :port, 4000
  run! if app_file == $0
end