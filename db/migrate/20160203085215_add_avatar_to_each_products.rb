class AddAvatarToEachProducts < ActiveRecord::Migration

  def up
    add_attachment :beauty_equipments, :avatar1
    add_attachment :beauty_equipments, :avatar2
    add_attachment :beauty_equipments, :avatar3
    add_attachment :beauty_equipments, :avatar4
    add_attachment :beauty_equipments, :avatar5

    add_attachment :car_accessories, :avatar1
    add_attachment :car_accessories, :avatar2
    add_attachment :car_accessories, :avatar3
    add_attachment :car_accessories, :avatar4
    add_attachment :car_accessories, :avatar5

    add_attachment :computers, :avatar1
    add_attachment :computers, :avatar2
    add_attachment :computers, :avatar3
    add_attachment :computers, :avatar4
    add_attachment :computers, :avatar5

    add_attachment :services, :avatar1
    add_attachment :services, :avatar2
    add_attachment :services, :avatar3
    add_attachment :services, :avatar4
    add_attachment :services, :avatar5

    add_attachment :electrical_equipments, :avatar1
    add_attachment :electrical_equipments, :avatar2
    add_attachment :electrical_equipments, :avatar3
    add_attachment :electrical_equipments, :avatar4
    add_attachment :electrical_equipments, :avatar5

    add_attachment :medicines, :avatar1
    add_attachment :medicines, :avatar2
    add_attachment :medicines, :avatar3
    add_attachment :medicines, :avatar4
    add_attachment :medicines, :avatar5

    add_attachment :equipment, :avatar1
    add_attachment :equipment, :avatar2
    add_attachment :equipment, :avatar3
    add_attachment :equipment, :avatar4
    add_attachment :equipment, :avatar5

    add_attachment :fashion_accessories, :avatar1
    add_attachment :fashion_accessories, :avatar2
    add_attachment :fashion_accessories, :avatar3
    add_attachment :fashion_accessories, :avatar4
    add_attachment :fashion_accessories, :avatar5

    add_attachment :fashion_bags, :avatar1
    add_attachment :fashion_bags, :avatar2
    add_attachment :fashion_bags, :avatar3
    add_attachment :fashion_bags, :avatar4
    add_attachment :fashion_bags, :avatar5

    add_attachment :fashion_clothings, :avatar1
    add_attachment :fashion_clothings, :avatar2
    add_attachment :fashion_clothings, :avatar3
    add_attachment :fashion_clothings, :avatar4
    add_attachment :fashion_clothings, :avatar5

    add_attachment :fashion_footwears, :avatar1
    add_attachment :fashion_footwears, :avatar2
    add_attachment :fashion_footwears, :avatar3
    add_attachment :fashion_footwears, :avatar4
    add_attachment :fashion_footwears, :avatar5

    add_attachment :fashion_hats, :avatar1
    add_attachment :fashion_hats, :avatar2
    add_attachment :fashion_hats, :avatar3
    add_attachment :fashion_hats, :avatar4
    add_attachment :fashion_hats, :avatar5

    add_attachment :gifts, :avatar1
    add_attachment :gifts, :avatar2
    add_attachment :gifts, :avatar3
    add_attachment :gifts, :avatar4
    add_attachment :gifts, :avatar5


    add_attachment :home_appliances, :avatar1
    add_attachment :home_appliances, :avatar2
    add_attachment :home_appliances, :avatar3
    add_attachment :home_appliances, :avatar4
    add_attachment :home_appliances, :avatar5

    add_attachment :instruments, :avatar1
    add_attachment :instruments, :avatar2
    add_attachment :instruments, :avatar3
    add_attachment :instruments, :avatar4
    add_attachment :instruments, :avatar5

    add_attachment :machines, :avatar1
    add_attachment :machines, :avatar2
    add_attachment :machines, :avatar3
    add_attachment :machines, :avatar4
    add_attachment :machines, :avatar5

    add_attachment :makeup_and_skincares, :avatar1
    add_attachment :makeup_and_skincares, :avatar2
    add_attachment :makeup_and_skincares, :avatar3
    add_attachment :makeup_and_skincares, :avatar4
    add_attachment :makeup_and_skincares, :avatar5


    add_attachment :motorcycle_accessories, :avatar1
    add_attachment :motorcycle_accessories, :avatar2
    add_attachment :motorcycle_accessories, :avatar3
    add_attachment :motorcycle_accessories, :avatar4
    add_attachment :motorcycle_accessories, :avatar5

    add_attachment :sports, :avatar1
    add_attachment :sports, :avatar2
    add_attachment :sports, :avatar3
    add_attachment :sports, :avatar4
    add_attachment :sports, :avatar5

    add_attachment :telephone_accessories, :avatar1
    add_attachment :telephone_accessories, :avatar2
    add_attachment :telephone_accessories, :avatar3
    add_attachment :telephone_accessories, :avatar4
    add_attachment :telephone_accessories, :avatar5

    add_attachment :toys, :avatar1
    add_attachment :toys, :avatar2
    add_attachment :toys, :avatar3
    add_attachment :toys, :avatar4
    add_attachment :toys, :avatar5

 
  end

  def down

    remove_attachment :beauty_equipments, :avatar1
    remove_attachment :beauty_equipments, :avatar2
    remove_attachment :beauty_equipments, :avatar3
    remove_attachment :beauty_equipments, :avatar4
    remove_attachment :beauty_equipments, :avatar5

    remove_attachment :medicines, :avatar1
    remove_attachment :medicines, :avatar2
    remove_attachment :medicines, :avatar3
    remove_attachment :medicines, :avatar4
    remove_attachment :medicines, :avatar5

    remove_attachment :car_accessories, :avatar1
    remove_attachment :car_accessories, :avatar2
    remove_attachment :car_accessories, :avatar3
    remove_attachment :car_accessories, :avatar4
    remove_attachment :car_accessories, :avatar5

    remove_attachment :computers, :avatar1
    remove_attachment :computers, :avatar2
    remove_attachment :computers, :avatar3
    remove_attachment :computers, :avatar4
    remove_attachment :computers, :avatar5

    remove_attachment :electrical_equipments, :avatar1
    remove_attachment :electrical_equipments, :avatar2
    remove_attachment :electrical_equipments, :avatar3
    remove_attachment :electrical_equipments, :avatar4
    remove_attachment :electrical_equipments, :avatar5

    remove_attachment :equipment, :avatar1
    remove_attachment :equipment, :avatar2
    remove_attachment :equipment, :avatar3
    remove_attachment :equipment, :avatar4
    remove_attachment :equipment, :avatar5

    remove_attachment :fashion_accessories, :avatar1
    remove_attachment :fashion_accessories, :avatar2
    remove_attachment :fashion_accessories, :avatar3
    remove_attachment :fashion_accessories, :avatar4
    remove_attachment :fashion_accessories, :avatar5

    remove_attachment :fashion_bags, :avatar1
    remove_attachment :fashion_bags, :avatar2
    remove_attachment :fashion_bags, :avatar3
    remove_attachment :fashion_bags, :avatar4
    remove_attachment :fashion_bags, :avatar5

    remove_attachment :fashion_clothings, :avatar1
    remove_attachment :fashion_clothings, :avatar2
    remove_attachment :fashion_clothings, :avatar3
    remove_attachment :fashion_clothings, :avatar4
    remove_attachment :fashion_clothings, :avatar5

    remove_attachment :fashion_footwears, :avatar1
    remove_attachment :fashion_footwears, :avatar2
    remove_attachment :fashion_footwears, :avatar3
    remove_attachment :fashion_footwears, :avatar4
    remove_attachment :fashion_footwears, :avatar5

    remove_attachment :fashion_hats, :avatar1
    remove_attachment :fashion_hats, :avatar2
    remove_attachment :fashion_hats, :avatar3
    remove_attachment :fashion_hats, :avatar4
    remove_attachment :fashion_hats, :avatar5

    remove_attachment :gifts, :avatar1
    remove_attachment :gifts, :avatar2
    remove_attachment :gifts, :avatar3
    remove_attachment :gifts, :avatar4
    remove_attachment :gifts, :avatar5


    remove_attachment :home_appliances, :avatar1
    remove_attachment :home_appliances, :avatar2
    remove_attachment :home_appliances, :avatar3
    remove_attachment :home_appliances, :avatar4
    remove_attachment :home_appliances, :avatar5

    remove_attachment :instruments, :avatar1
    remove_attachment :instruments, :avatar2
    remove_attachment :instruments, :avatar3
    remove_attachment :instruments, :avatar4
    remove_attachment :instruments, :avatar5

    remove_attachment :machines, :avatar1
    remove_attachment :machines, :avatar2
    remove_attachment :machines, :avatar3
    remove_attachment :machines, :avatar4
    remove_attachment :machines, :avatar5

    remove_attachment :makeup_and_skincares, :avatar1
    remove_attachment :makeup_and_skincares, :avatar2
    remove_attachment :makeup_and_skincares, :avatar3
    remove_attachment :makeup_and_skincares, :avatar4
    remove_attachment :makeup_and_skincares, :avatar5


    remove_attachment :motorcycle_accessories, :avatar1
    remove_attachment :motorcycle_accessories, :avatar2
    remove_attachment :motorcycle_accessories, :avatar3
    remove_attachment :motorcycle_accessories, :avatar4
    remove_attachment :motorcycle_accessories, :avatar5

    remove_attachment :sports, :avatar1
    remove_attachment :sports, :avatar2
    remove_attachment :sports, :avatar3
    remove_attachment :sports, :avatar4
    remove_attachment :sports, :avatar5

    remove_attachment :telephone_accessories, :avatar1
    remove_attachment :telephone_accessories, :avatar2
    remove_attachment :telephone_accessories, :avatar3
    remove_attachment :telephone_accessories, :avatar4
    remove_attachment :telephone_accessories, :avatar5

    remove_attachment :toys, :avatar1
    remove_attachment :toys, :avatar2
    remove_attachment :toys, :avatar3
    remove_attachment :toys, :avatar4
    remove_attachment :toys, :avatar5


    remove_attachment :services, :avatar1
    remove_attachment :services, :avatar2
    remove_attachment :services, :avatar3
    remove_attachment :services, :avatar4
    remove_attachment :services, :avatar5


  end

end

