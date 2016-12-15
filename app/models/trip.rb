class Trip < ApplicationRecord
  
  validates :journey_name, :imei_no, presence: true
  
  has_many :ovrspds

=begin  def as_json(options={})
    { :journey_name => self.journey_name, 
      :avg_spd =>self.avg_spd }
  end
=end  
end
