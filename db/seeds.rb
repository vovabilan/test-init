# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p "create companies"
Company.create(name: "Nokia", email: "nokia@example.com", phone: 17-77-77, address: st. StPaul)
Company.create(name: "Philips", email: "philips@example.com", phone: 61-37-77, address: st. StKaul)
Company.create(name: "LG", email: "lg@example.com", phone: 63-47-77, address: ProsperityAvenue)
Company.create(name: "Sony", email: "sony@example.com", phone: 43-28-33, address: st. Tenafly)
Company.create(name: "LSD", email: "lsd@example.com", phone: 99-99-99, address: st. Topeka)
Company.create(name: "Fly", email: "fly@example.com", phone: 11-11-11, address: st. Angeles)

p "create users"
User.create(
  {email: "mack-d@ukr.net", password: "12345", admin: true},
 without_protection: true
)
User.create( email: "mack-d@bigmir.net", password: "12345")
