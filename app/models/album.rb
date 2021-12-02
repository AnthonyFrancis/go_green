require 'httparty'
require 'json'

class Album
	include HTTParty
  	
	def self.albums 
		response  = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
		return JSON.parse(response.body)
	end


	# def self.albums_by_class 
	# 	response  = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
	# 	return JSON.parse(response.body, object_class: Classname)
	# {}
	# [{},{}]
	# end
end