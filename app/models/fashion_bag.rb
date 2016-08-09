class FashionBag < ActiveRecord::Base

	BAGCATEGORY = [

"The Clutch",
"The Tote Bag",
"The Baguette Bag",
"The Satchel Bag",


]

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

       raw_seller_name = User.where(:id => self.user_id).pluck(:name)
     @config_seller = raw_seller_name.to_s.gsub('["', '')
     @seller_name = @config_seller.to_s.gsub('"]', '')

    Product.create( :mmdealer_code => "bags"+(Product.maximum(:id).next.to_i).to_s,            :user_id => self.user_id,
            :seller_name => @seller_name,
      :title => self.title,
      :color => self.color,
           :store_name => self.store_name,
      :made_by_country => self.made_by_country,
      :description => self.description,
      :brand => self.brand,
      :price => self.price,
      :size => self.size,
      :quantity => self.quantity,
      :delivery_category => self.delivery_category,
      :made_with => self.made_with,
      :category => "bags",
      :avatar1_file_name => self.avatar1.url,
      :avatar2_file_name => self.avatar2.url,
      :avatar3_file_name => self.avatar3.url,
      :avatar4_file_name => self.avatar4.url,
      :avatar5_file_name => self.avatar5.url,
            :avatar1_edit => self.avatar1_edit,
      :avatar2_edit => self.avatar2_edit,
      :avatar3_edit => self.avatar3_edit,
      :avatar4_edit => self.avatar4_edit,
      :avatar5_edit => self.avatar5_edit,
      :avatar6_edit => self.avatar6_edit,
      :avatar7_edit => self.avatar7_edit,
      :avatar8_edit => self.avatar8_edit,
      :bag_type => self.bag_type)
  end

end
