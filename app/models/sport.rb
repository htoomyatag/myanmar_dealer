class Sport < ActiveRecord::Base

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
      Product.create( :mmdealer_code => "sports"+(Product.maximum(:id).next.to_i).to_s,:seller_id => self.seller_id,
            :title => self.title,
            :price => self.price,
            :quantity => self.quantity,
            :weight => self.weight,
            :made_by_country => self.made_by_country,
            :made_with => self.made_with,
            :description => self.description,
            :color => self.color,
            :brand => self.brand,
            :category => "sports",
            :store_name => self.seller_id
        )
  end
  
end
