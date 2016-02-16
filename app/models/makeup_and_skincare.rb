class MakeupAndSkincare < ActiveRecord::Base

  
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


      Product.create( :mmdealer_code => "makeupandskincare"+self.id.to_s,:seller_id => self.seller_id,
      :title => self.title,
      :category => self.category,
      :ingredient => self.ingredient,
      :usage => self.usage,
      :made_by_country => self.made_by_country,
      :description => self.description,
      :brand => self.brand,
      :effect => self.effect,
      :certification => self.certification,
      :price => self.price,
      :color => self.color)
  end

end
