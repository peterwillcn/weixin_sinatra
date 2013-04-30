require 'json'
require 'sinatra'
require "sinatra/json"

get '/' do
  puts params
  content_type :json
  params.to_json
end
