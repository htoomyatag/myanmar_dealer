class Machine < ActiveRecord::Base

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


      Product.create( :mmdealer_code => "machines"+(Product.maximum(:id).next.to_i).to_s,:user_id => self.user_id,
      :title => self.title,
      :made_by_country => self.made_by_country,
      :description => self.description,
      :brand => self.brand,
      :price => self.price,
      :modal_number => self.modal_number,
      :color => self.color,
      :quantity => self.quantity,
      :weight => self.weight,
      :made_with => self.made_with,
      :specification => self.specification,
      :category => "machines",
      :avatar1_file_name => self.avatar1.url,
      :avatar2_file_name => self.avatar2.url,
      :avatar3_file_name => self.avatar3.url,
      :avatar4_file_name => self.avatar4.url,
      :avatar5_file_name => self.avatar5.url,
      :dimension => self.dimension
    )
  end
  
end
