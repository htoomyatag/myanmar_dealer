# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



bath_supply = BathSupply.create([

   {title: "aokshampoo",
   category: "shamepoo",
   ingredient: "livers",
   usage: "one times a week",
   made_by_country: "japan",
   description: "dandruff shampoo",
   brand: "pentine",
   effect: "clean dandruff",
   certification: "3453vgergrecerti",
   age_group: "12 to 60",
   price: "70000",
   seller_id: "1",
   store_name: "H&Ttechs"}

])

seller = Seller.create([

{has_store:"Yes", name:"HtooMyatAung",company_name:"H&Ttechs", phone:"09795545748", email: "htoomyatag.webdev@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{has_store:"Yes", name:"theldarlykhin",company_name:"MiMiBerry", phone:"09795545748",email: "theldarlykhin.webdev@gmail.com", password: "privatethel", password_confirmation: "privatethel"},

])


buyer = Buyer.create([

{email: "htoomyatag@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{email: "theldarlykhin@gmail.com", password: "privatethel", password_confirmation: "privatethel"},

])




fashion_clothings = FashionClothing.create([

{
seller_id:"1",
title:"swag tee",
price:1300,
quantity: 12,
size:"Medium, Large, XL",
made_by_country:"Thailand", 
made_with:"Cotton",
description: "for the swag from the swag",
gender: "Male",
brand: "Genius",
color: "Black, White, Grey",
store_name: "H&Ttechs"
}

])


fashion_hats = FashionHat.create([

{
seller_id:"1",
title:"swag tee",
price:1000,
quantity: 12,
made_by_country:"Thailand", 
made_with:"Cotton",
description: "for the swag from the swag",
brand: "Genius",
store_name: "H&Ttechs"
}

])


store = Store.create([

{

  store_name:"H&Ttechs",
  store_address:"Building5,Room 24, Hlaing Myinn Moh Housing",
  store_contact:"09795545748",
  description:"a technology startup to bring applications",
  seller_id:"1",
  seller_name:""

},

{

  store_name:"MiMiBerry",
  store_address:"Building5,Room 24, Hlaing Myinn Moh Housing",
  store_contact:"09795545748",
  description:"tshirt printing",
  seller_id:"2",
  seller_name:""

}

])

