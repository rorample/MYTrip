class Trip < ApplicationRecord
  
  validates :journey_name, :imei_no, presence: true
  
  has_many :ovrspds
  
end
