require 'sinatra'

get '/' do
  puts params
  content_type :json
  {"params" => params}.to_json
end
