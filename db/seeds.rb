# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p "create companies"
Company.create(name: "Nokia", email: "nokia@example.com", phone: "17-77-77", address: "StPaul")
Company.create(name: "Philips", email: "philips@example.com", phone: "61-37-77", address: "StKaul")
Company.create(name: "LG", email: "lg@example.com", phone: "63-47-77", address: "ProsperityAvenue")
Company.create(name: "Sony", email: "sony@example.com", phone: "43-28-33", address: "Tenafly")
Company.create(name: "LSD", email: "lsd@example.com", phone: "99-99-99", address: "Topeka")
Company.create(name: "Fly", email: "fly@example.com", phone: "11-11-11", address: "Angeles")
Company.create(name: "HTC", email: "htc@example.com", phone: "22-22-22", address: "Gagarina")
Company.create(name: "Panasonic", email: "panasonic@example.com", phone: "44-44-44", address: "Fruze")
Company.create(name: "Acer", email: "acer@example.com", phone: "55-55-55", address: "Hoholya")
Company.create(name: "Toshiba", email: "toshiba@example.com", phone: "66-66-66", address: "Shevchenka")
Company.create(name: "Asus", email: "asus@example.com", phone: "77-77-77", address: "Hoholya")

p 'Roles'
Role.create([{ name: 'User' }, { name: 'Admin' }])

p "create users"
u1 = User.create( email: "mack-d@ukr.net", password: "12345678", role_id: Role.where(name: "Admin").first.id )
User.create( email: "mack-d@bigmir.net", password: "12345678", role_id: Role.first.id )
