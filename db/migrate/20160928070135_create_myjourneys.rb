class CreateMyjourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :myjourneys do |t|
      t.string :journey_name
      t.string :imei_no
      t.string :start_latitude
      t.string :start_longitude
      t.string :remarks

      t.timestamps
    end
  end
end
