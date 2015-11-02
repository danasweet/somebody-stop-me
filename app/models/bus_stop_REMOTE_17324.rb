class BusStop < ActiveRecord::Base


	def self.find_closest_by_coord_and_bus(lon,lat,num)
		stop = self.find_by_sql("SELECT * from bus_stops WHERE (bus_stops.bus_number = #{num}) ORDER BY ST_Distance(bus_stops.lonlat::geometry, ST_Geomfromtext('SRID=4326;POINT (#{lat} #{lon})')) limit 1")[0]
		return {lat: stop.lonlat.x, lon: stop.lonlat.y}
	end

	def self.find_closest_by_coord(lon,lat)
		stop = self.find_by_sql("SELECT * from bus_stops ORDER BY ST_Distance(bus_stops.lonlat::geometry, ST_Geomfromtext('SRID=4326;POINT (#{lon} #{lat})')) limit 1")[0]
		return {lat: stop.lonlat.x, lon: stop.lonlat.y}
	end

end
