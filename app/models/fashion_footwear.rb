class FashionFootwear < ActiveRecord::Base

		FOOTWEARCATEGORY = [


"Boots",
"Shoes",
"Sandals",
"Indoor footwear",
"Specific footwear",
"Traditional footwear",
"Socks"

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

 def add_to_product
      Product.create( :mmdealer_code => "footwears"+(Product.maximum(:id).next.to_i).to_s,:user_id => self.user_id,
      :title => self.title,
      :made_by_country => self.made_by_country,
      :brand => self.brand,
      :price => self.price,
      :color => self.color,
      :quantity => self.quantity,
      :size => self.size,
      :category => "footwears",
      :footwear_type => self.footwear_type
     )
  end
end
