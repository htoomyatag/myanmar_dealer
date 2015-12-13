# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


seller = Seller.create([

{email: "htoomyatag.webdev@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{email: "theldarlykhin.webdev@gmail.com", password: "privatethel", password_confirmation: "privatethel"},

])


buyer = Buyer.create([

{email: "htoomyatag@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{email: "theldarlykhin@gmail.com", password: "privatethel", password_confirmation: "privatethel"},

])