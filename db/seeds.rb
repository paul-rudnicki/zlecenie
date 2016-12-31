# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create!(
	name: 'Paul',
	surname: 'Rudnicki',
	login: 'paulrud',
	email: 'pawelrudnicki79@gmail.com',
	password: 'password'
)

user2 = User.create!(
	name: 'Tomasz',
	surname: 'Nowacki',
	login: 'tomasz',
	email: 'tomasz@gmail.com',
	password: 'password'
)



10.times do
	cat_name = Faker::Lorem.word.capitalize
	category = Category.create(
		name: cat_name,
		slug: cat_name.parameterize
	)

	city = Faker::Address.city
	geolocation = Geolocation.create(
		name: city,
		slug: city.parameterize
	)
	
	advertisment = Advertisment.create(
		title: Faker::Name.title,
		content: Faker::Lorem.paragraphs,
		price: Faker::Commerce.price,
		user: user,
		ended: Time.now + rand(2..30).days
	)

	advertisment_categorie = AdvertismentCategory.create(
		advertisment: advertisment,
		category: category
	)

	advertisment_geolocation = AdvertismentGeolocation.create(
		advertisment: advertisment,
		geolocation: geolocation
	)

	offer = Offer.create(
		content: Faker::Lorem.paragraphs,
		price: Faker::Commerce.price,
		realization: Faker::Date.forward,
		user: user,
		advertisment: advertisment
	)

	# page_title = Faker::Name.title
	# page = Page.create(
	# 	title: page_title,
	# 	content: Faker::Lorem.paragraphs,
	# 	slug: page_title.parameterize
	# )

end
