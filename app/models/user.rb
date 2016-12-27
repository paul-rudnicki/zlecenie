class User < ActiveRecord::Base
	has_secure_password

	has_many :advertisments
	has_many :offers

	extend FriendlyId
	friendly_id :login, use: :slugged
	
end
