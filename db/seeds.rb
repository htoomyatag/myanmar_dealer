# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


products = Product.create([

{title:"tmp",price: "10"},


])


bath_supply = BathSupply.create([

   {title: "aokshampoo",
   category: "bath_supplies",
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


beauty_equipments = BeautyEquipment.create([

   {title:"temptitle",
    category:"beauty_equipments",
    brand:"tempbrand",
    made_by_country:"China",
   description:"This is Descritpion",
    feature:"This is feature",
    modal_number:"tempmodal",
    color:"Red Green Blue",
    price:"500",
    seller_id:"1",
    quantity:22,
    store_name:"H&Ttechs"}

    ])


  

       car_accessories = CarAccessory.create([

   {title:"temptitle",
    price:"1000",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    brand:"tempbrand",
   specification:"this is specfication",
    modal_number:"tempmodal",
    color:"Red Green Blue",
    feature:"This is feature",
    category:"car_accessories",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])


  

      computers = Computer.create([

   {title:"temptitle",
    price:"1500",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    thickness:"tempticknesss",
    made_by_country:"China",
   description:"This is Descritpion",
    brand:"tempbrand",
    category:"computers_laptops",
    modal_number:"tempmodal",
    color:"Red Green Blue",
    feature:"This is feature",
    operation_system:"android os",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])


  
     electrical_equipments = ElectricalEquipment.create([

   {title:"temptitle",
    price:"2000",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    made_by_country:"China",
   description:"This is Descritpion",
    brand:"tempbrand",
    category:"eletronic_related",
    modal_number:"tempmodal",
    color:"Red Green Blue",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])


  
      equipments = Equipment.create([

   {title:"temptitle",
    price:"2500",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    made_by_country:"China",
    category:"equipments",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    brand:"tempbrand",
   specification:"this is specfication",
    modal_number:"tempmodal",
    color:"Red Green Blue",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])


  

    fashion_accessories = FashionAccessory.create([

   {title:"temptitle",
    price:"3000",
    quantity:"30",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    brand:"tempbrand",
    seller_id:"1",
    category:"fashion_related",
    store_name:"H&Ttechs"}

    ])


  

fashion_bags = FashionBag.create([

    {title:"temptitle",
    price:"3500",
    quantity:"30",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    bag_type:"thisisbagtype",
    size:"tempsize",
    brand:"tempbrand",
    seller_id:"1",
    category:"bags",
    store_name:"H&Ttechs"}

    ])


  
    fashion_clothings = FashionClothing.create([

    {title:"temptitle",
    price:"5000",
    quantity:"30",
    size:"tempsize",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    gender:"male",
    brand:"tempbrand",
    seller_id:"1",
    color:"Red Green Blue",
    category:"cloths",
    store_name:"H&Ttechs"}

    ])


  

      fashion_footwears = FashionFootwear.create([

    { title:"temptitle",
    price:"6000",
    quantity:"30",
    made_by_country:"China",
    made_with:"tempmadewith",
    description:"This is Descritpion",
    footwear_type:"slipper",
    size:"tempsize",
    brand:"tempbrand",
    seller_id:"1",
    color: "red green black",
    category:"footwears",
    store_name:"H&Ttechs"}

    ])


  

      fashion_hats = FashionHat.create([

    {title:"temptitle",
    price:"299",
    quantity:"30",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    brand:"tempbrand",
    hat_type:"snapback",
    seller_id:"1",
    category:"hats",
    store_name:"H&Ttechs"}

    ])


gifts = Gift.create([

    {title:"temptitle",
    price:"9000",
    quantity:"30",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    color:"Red Green Blue",
    seller_id:"1",
    category:"gifts",
    store_name:"H&Ttechs"}

    ])


  

    home_appliances = HomeAppliance.create([

    {title:"temptitle",
    price:"8000",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    made_by_country:"China",
   description:"This is Descritpion",
    brand:"tempbrand",
    modal_number:"tempmodal",
    color:"Red Green Blue",
   feature:"This is feature",
    power:"14k",
    voltage:"22V",
    seller_id:"1",
    category:"home_appliance",
    store_name:"H&Ttechs"}

    ])



  

instruments = Instrument.create([

    {title:"temptitle",
    price:"7000",
    quantity:"30",
    dimension:"12 x 40 fts",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    brand:"tempbrand",
    modal_number:"tempmodal",
   specification:"this is specfication",
    color:"Red Green Blue",
    seller_id:"1",
    category:"instruments",
    store_name:"H&Ttechs"}

    ])


    machines = Machine.create([

    {title:"temptitle",
    price:"900",
    quantity:"30",
    dimension:"12x41 fts",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
    description:"This is Descritpion",
    brand:"tempbrand",
    modal_number:"tempmodal",
    specification:"this is specfication",
    color:"Red Green Blue",
    category:"machines",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])

  

  makeup_and_skincares = MakeupAndSkincare.create([

    {title:"temptitle",
     category:"comesmetics",
     quantity:22,
     certification:"this is certification",
     ingredient:"thisisingredient",
     usage:"thissuage",
     made_by_country:"China",
     description:"This is Descritpion",
     brand:"tempbrand",
     color:"Red Green Blue",
     effect:"thisiseffect",
     price:"6000",
     seller_id:"1",
     store_name:"H&Ttechs"}

    ])


  
medicines = Medicine.create([

    {title:"temptitle",
     category:"medicines",
     certification:"thisiscerti",
     quantity:22,
     ingredient:"thisisingredient",
     usage:"thisisusage",
     made_by_country:"China",
     description:"This is Descritpion",
     caution:"thiscaution",
     price:"2000",
     seller_id:"1",
     store_name:"H&Ttechs"}

    ])

  

 motorcycle_accessories = MotorcycleAccessory.create([

    {title:"temptitle",
    price:"8000",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
    description:"This is Descritpion",
    brand:"tempbrand",
    specification:"this is specfication",
    modal_number:"tempmodal",
    color:"Red Green Blue",
    feature:"This is feature",
    seller_id:"1",
    category:"motorcycle",
    store_name:"H&Ttechs"}

    ])


  
services = Service.create([
    {title:"temptitle",
    charges:"thisischarges",
    service_category:"tempcategory",
   description:"This is Descritpion",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])
  

 sports = Sport.create([
    {title:"temptitle",
    price:"950",
    quantity:"30",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
   description:"This is Descritpion",
    color:"Red Green Blue",
    brand:"tempbrand",
    category:"sports",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])


  


   telephone_accessories = TelephoneAccessory.create([
    {title:"temptitle",
    price:"300",
    quantity:"30",
    size:"tempsize",
    weight:"tempweight",
    made_by_country:"China",
   description:"This is Descritpion",
    brand:"tempbrand",
    category:"phone_related",
    modal_number:"tempmodal",
    color:"Red Green Blue",
   feature:"This is feature",
    operation_system:"android os",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])


  
  toys = Toy.create([
    {title:"temptitle",
    price:"8000",
    quantity:"30",
    weight:"tempweight",
    made_by_country:"China",
    made_with:"tempmadewith",
    description:"This is Descritpion",
    color:"Red Green Blue",
    age_group:"Adult 18 to 60",
    seller_id:"1",
    category:"toys",
    store_name:"H&Ttechs"}

    ])


  
  training_and_schools = TrainingAndSchool.create([
    {title:"temptitle",
    fees:"760",
    period:"12July2016 to 12Dec2016",
    school:"TTC",
    description:"This is Descritpion",
    seller_id:"1",
    store_name:"H&Ttechs"}

    ])



  






seller = Seller.create([

{has_store:"Yes", name:"HtooMyatAung",company_name:"H&Ttechs", phone:"09795545748", email: "htoomyatag.webdev@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{has_store:"Yes", name:"theldarlykhin",company_name:"MiMiBerry", phone:"09795545748",email: "theldarlykhin.webdev@gmail.com", password: "privatethel", password_confirmation: "privatethel"}

])


buyer = Buyer.create([

{name: "htoo", email: "htoomyatag@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{name: "thel", email: "theldarlykhin@gmail.com", password: "privatethel", password_confirmation: "privatethel"},
{name: "insane", email: "insane@gmail.com", password: "privatethel", password_confirmation: "privatethel"}

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
category: "cloths",
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
category:"hats",
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

