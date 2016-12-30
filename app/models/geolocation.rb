class Geolocation < ActiveRecord::Base
	has_many :advertisment_geolocations
	has_many :advertisments, through: :advertisment_geolocations
end
