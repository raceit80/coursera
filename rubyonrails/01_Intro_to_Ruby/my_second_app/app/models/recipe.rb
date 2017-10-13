require 'httparty'
require 'pp'

class Recipe
	include HTTParty
	@key_value = ENV['FOOD2FORK_KEY'] || '7326dfc69272a062e170ec938206dcfb'
    @hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'food2fork.com' 
	
	base_uri "http://#{@hostport}/api/search"
	default_params key: @key_value
	format :json

	#def initialize(term)
    #@options = { query: { q: term } }
  	#end

	def self.for(term)
		 @options = { query: { q: term } }
    	 get("", @options)
  	end


end