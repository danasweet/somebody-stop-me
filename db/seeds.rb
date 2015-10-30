# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

CSV.foreach('db/mappedfile.csv', headers: true) do |line|
  if line["Bus1"] != nil
    BusStop.create(bus_number: line["Bus1"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus2"] != nil
    BusStop.create(bus_number: line["Bus2"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus3"] != nil
    BusStop.create(bus_number: line["Bus3"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus4"] != nil
    BusStop.create(bus_number: line["Bus4"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus5"] != nil
    BusStop.create(bus_number: line["Bus5"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus6"] != nil
    BusStop.create(bus_number: line["Bus6"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus7"] != nil
    BusStop.create(bus_number: line["Bus7"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus8"] != nil
    BusStop.create(bus_number: line["Bus8"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus9"] != nil
    BusStop.create(bus_number: line["Bus9"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus10"] != nil
    BusStop.create(bus_number: line["Bus10"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus11"] != nil
    BusStop.create(bus_number: line["Bus11"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus12"] != nil
    BusStop.create(bus_number: line["Bus12"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus13"] != nil
    BusStop.create(bus_number: line["Bus13"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
  if line["Bus14"] != nil
    BusStop.create(bus_number: line["Bus14"], lonlat: "POINT(#{line['Lon']} #{line['Lat']})" )
  end
end