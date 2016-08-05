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

  DELIVERY = ["self_delivery", "transporter_logistics"]

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
     raw_seller_name = User.where(:id => self.user_id).pluck(:name)
     @config_seller = raw_seller_name.to_s.gsub('["', '')
     @seller_name = @config_seller.to_s.gsub('"]', '')


     Product.create(:mmdealer_code =>  "bath_supplies"+(Product.maximum(:id).next.to_i).to_s,
     :title => title,
     :ingredient => ingredient,
     :usage => usage,
     :made_by_country => made_by_country,
     :description => description,
     :brand => brand,
     :effect => effect,
     :delivery_category => self.delivery_category,
     :certification => certification,
     :age_group => age_group,
     :price => price,
     :store_name => self.store_name,
     :category => "bath_supplies",
     :avatar1_file_name => self.avatar1.url,
     :avatar2_file_name => self.avatar2.url,
     :avatar3_file_name => self.avatar3.url,
     :avatar4_file_name => self.avatar4.url,
      :avatar1_edit => self.avatar1_edit,
      :avatar2_edit => self.avatar2_edit,
      :avatar3_edit => self.avatar3_edit,
      :avatar4_edit => self.avatar4_edit,
      :user_id => user_id,
      :seller_name => @seller_name
     ) 
   






   end





end
 