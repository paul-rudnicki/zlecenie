class User < ActiveRecord::Base
	has_secure_password

	has_many :advertisments
	has_many :offers

	extend FriendlyId
	friendly_id :login, use: :slugged

	validates :email, presence: true, uniqueness: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
