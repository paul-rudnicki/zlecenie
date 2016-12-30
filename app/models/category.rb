class Category < ActiveRecord::Base
	has_many :advertisment_categories
	has_many :advertisments, through: :advertisment_categories
end
