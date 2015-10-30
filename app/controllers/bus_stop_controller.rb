
class BusStopController < ApplicationController
	skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }

	def api
		p params
    obj = params[:data]
    address = obj[0]
    bus_num = obj[1]
		response = Geokit::Geocoders::MultiGeocoder.do_geocode(address)
    return BusStop.find_closest_by_coord_and_bus(response.longitude,response.latitude,bus_num)
	end

end
