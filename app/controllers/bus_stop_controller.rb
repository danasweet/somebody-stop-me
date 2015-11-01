
class BusStopController < ApplicationController
	protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

	def api
    obj = params
    address = obj[:address]
    bus_num = obj[:busLine]

		response = Geokit::Geocoders::MultiGeocoder.do_geocode(address)
		bus_stop_json = BusStop.find_closest_by_coord_and_bus(response.longitude,response.latitude,bus_num)
		render json: bus_stop_json
	end
end
