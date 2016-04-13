class BathSupply < ActiveRecord::Base

  after_create :add_to_product

  has_attached_file :avatar1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar1, content_type: /\Aimage\/.*\Z/

  has_attached_file :avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar2, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :avatar3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar3, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :avatar4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar4, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :avatar5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar5, content_type: /\Aimage\/.*\Z/



   def add_to_product

     title = self.title
     category = self.category
     ingredient = self.ingredient
     usage = self.usage
     made_by_country = self.made_by_country
     description = self.description
     brand = self.brand
     effect = self.effect
     certification = self.certification
     age_group = self.age_group
     price = self.price
     user_id = self.user_id

     Product.create(:mmdealer_code =>  "bath_supplies"+(Product.maximum(:id).next.to_i).to_s,
     :title => title,
     :ingredient => ingredient,
     :usage => usage,
     :made_by_country => made_by_country,
     :description => description,
     :brand => brand,
     :effect => effect,
     :certification => certification,
     :age_group => age_group,
     :price => price,
     :store_name => self.store_name,
     :category => "bath_supplies",
     :user_id => user_id) 
   






   end





end
 