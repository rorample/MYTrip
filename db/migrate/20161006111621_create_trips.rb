class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :journey_name
      t.text :imei_no
      t.text :start_latitude
      t.text :start_longitude
      t.text :stop_latitude
      t.text :stop_longitude
      t.text :avg_spd
      t.string :remarks

      t.timestamps
    end
  end
end
