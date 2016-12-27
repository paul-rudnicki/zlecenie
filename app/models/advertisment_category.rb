class AdvertismentCategory < ActiveRecord::Base
  belongs_to :advertisment
  belongs_to :category
end
