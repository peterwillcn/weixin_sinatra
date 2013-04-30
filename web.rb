require 'sinatra'
require "sinatra/json"

get '/' do
  puts params
  json :params => params
end
