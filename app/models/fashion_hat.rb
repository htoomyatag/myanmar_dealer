class FashionHat < ActiveRecord::Base

		HATCATEGORY = [

"Top hat",
"Snapback",
"Fedora",
"Panama",


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




      Product.create( :mmdealer_code => self.id,:seller_id => self.seller_id,
      :title => self.title,
      :made_by_country => self.made_by_country,
      :description => self.description,
      :brand => self.brand,
      :price => self.price,
      :quantity => self.quantity,
      :made_with => self.made_with,
      :hat_type => self.hat_type)
  end
end
