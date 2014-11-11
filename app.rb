require 'sinatra'
require 'httparty'
require 'byebug'
data_from_mashable = HTTParty.get('http://mashable.com/stories.json')
json = data_from_mashable.parsed_response	

get '/' do
	  #turns info into ruby
		@new = json['new']
		@rising = json['rising']
		@hot = json['hot']
	
	#@json.each do |k,v|  #this allows us to see the key not just the value
	#@channels #initializes channels
	#@channels << k #shovels are only for arrays
	#end
	
		erb :home
	end

get '/home' do
	 redirect to ('/')
	end


get '/article_new' do
		@new = json['new']
		@new_story = params['new_story']
	
	erb :article_new
	end


get '/article_hot' do
		@new = json['hot']
		@hot_story = params['hot_story']
	
	erb :article_hot
	end

get '/article_rising' do
		@new = json['rising']
		@rising_story = params['rising_story']
	
	erb :article_rising
	end		
