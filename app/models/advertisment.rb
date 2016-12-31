class Advertisment < ActiveRecord::Base
  belongs_to :user

  has_many :offers
  has_many :advertisment_categories
  has_many :categories, through: :advertisment_categories
  has_many :advertisment_geolocations
  has_many :geolocations, through: :advertisment_geolocations

  before_create :set_ended_date

  def set_ended_date
  	self.ended = Time.now + 30.days
  end

end
