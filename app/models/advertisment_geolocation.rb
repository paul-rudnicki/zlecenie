class AdvertismentGeolocation < ActiveRecord::Base
  belongs_to :advertisment
  belongs_to :geolocation
end
