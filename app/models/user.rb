class User < ApplicationRecord
	include HTTParty
	base_uri 'https://jsonplaceholder.typicode.com'

	def all
		self.class.get("/users" )
	end


	def albums
		self.class.get("/albums" )
	end

	has_many :albums
  	
	# def self.albums 
	# 	response  = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
	# 	return JSON.parse(response.body)
	# end

	# belongs_to :user

	# API_URL = 'https://jsonplaceholder.typicode.com/albums'

	# def albums 
	# 	response  = HTTParty.get(API_URL)
	# 	json = JSON.parse(response.body)
	# end

	# def self.albums_by_class 
	# 	response  = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
	# 	return JSON.parse(response.body, object_class: Classname)
	# {}
	# [{},{}]
	# end
end
