
class BusStopController < ApplicationController
	skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }

	def api
    obj = params["data"]
    address = obj.split(',')[0]
    bus_num = obj.split(',')[1]
		response = Geokit::Geocoders::MultiGeocoder.do_geocode(address)
    respond_to do |format|
      format.html { return BusStop.find_closest_by_coord_and_bus(response.longitude,response.latitude,bus_num) }
      format.json  { render :json => BusStop.find_closest_by_coord_and_bus(response.longitude,response.latitude,bus_num) }
      format.xml  { }
    end
	end

end
