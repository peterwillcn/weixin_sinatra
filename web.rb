require 'json'
require 'sinatra'
require "sinatra/json"
require 'digest/sha1'

get '/' do
  puts params

  sign = params[:signature]
  echostr = params[:echostr]
  timestamp = params[:timestamp]
  nonce = params[:nonce]
  token = "5vcooking"

  signed_value = Digest::SHA1.hexdigest([token, timestamp, nonce].sort.join)

  if signed_value == sign
    echostr
  end

end
