require 'httparty'
require 'pp'

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