require 'open-uri'

class BusStopController < ApplicationController

	def api
		obj = JSON.parse(params[:obj])
		address = obj.address
		bus_num = obj.bus_num
		response = open("google#{address}").read
		return BusStop.find_closest_by_coord(response.lon,response.lat,bus_num)
	end
	
end
