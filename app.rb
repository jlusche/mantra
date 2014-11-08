require 'sinatra'

require 'httparty'

data_from_mashable = HTTParty.get('http://mashable.com/stories.json')

puts data_from_mashable