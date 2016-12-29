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

user = User.create!(
	name: 'Tomasz',
	surname: 'Nowacki',
	login: 'tomasz',
	email: 'tomasz@gmail.com',
	password: 'password'
)