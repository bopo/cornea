require 'sinatra'
require 'riddle'

get '/' do
  client = Riddle::Client.new
  @results = client.query "Drive"
  
  erb :query
end