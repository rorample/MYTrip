class Trip < ApplicationRecord
  
  validates :journey_name, :imei_no, presence: true
  
  has_many :ovrspds

  def as_json(options={})
    { :journey_name => self.journey_name, :imei_no => self.imei_no, :start_latitude => self.start_latitude,
      :start_longitude => self.start_longitude, :stop_latitude => self.stop_latitude, :stop_longitude => self.stop_longitude,
      :avg_spd => self.avg_spd, :remarks => self.remarks }
  end
  
end
