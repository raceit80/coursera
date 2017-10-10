require 'httparty'
require 'pp'


# Use the class methods to get down to business quickly

response = HTTParty.get('http://food2fork.com/api/search?key=7326dfc69272a062e170ec938206dcfb&q=shredded%20chicken')

puts response.body, response.code, response.message, response.headers.inspect

class Coursera
	include HTTParty

	base_uri 'http://food2fork.com/api/search'
	default_params key: "7326dfc69272a062e170ec938206dcfb"	
	format :json

	def initialize(term)
    @options = { query: { q: term } }
  	end

	def results
    	self.class.get("", @options)
  	end


end

coursera1 = Coursera.new ("shredded%20chicken")
puts coursera1.results