class CreateOvrspds < ActiveRecord::Migration[5.0]
  def change
    create_table :ovrspds do |t|
      t.string :trip_id
      t.string :over_speed
      t.string :ovrspd_latitude
      t.string :ovrspd_longitude
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
