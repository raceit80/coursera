

require 'httparty'
require 'pp'


# Use the class methods to get down to business quickly

response = HTTParty.get('http://food2fork.com/api/search?key=7326dfc69272a062e170ec938206dcfb&q=shredded%20chicken')

puts response.body, response.code, response.message, response.headers.inspect

pp ENV


class Recipe
	include HTTParty

	base_uri 'http://food2fork.com/api/search'
	default_params key: ENV['FOOD2FORK_KEY']	
	format :json

	#def initialize(term)
    #@options = { query: { q: term } }
  	#end

	def self.for(term)
		 @options = { query: { q: term } }
    	 get("", @options)
  	end


end

