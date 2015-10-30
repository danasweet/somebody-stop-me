class CreateBusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops do |t|
      t.string :bus_number
      t.st_point :lonlat, geographic: true
      t.index :lonlat, using: :gist

      t.timestamps null: false
    end
  end
end
