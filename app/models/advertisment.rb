class Advertisment < ActiveRecord::Base
  belongs_to :user

  has_many :offers
  has_many :advertisment_categories
  has_many :categories, through: :advertisment_categories
end
