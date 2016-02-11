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
      Product.create(:seller_id => self.seller_id,
      :store_name => self.store_name,
      :title => self.title,
      :category => self.category,
      :ingredient => self.ingredient,
      :usage => self.usage,
      :made_by_country => self.made_by_country,
      :description => self.description,
      :brand => self.brand,
      :effect => self.effect,
      :certification => self.certification,
      :age_group => self.age_group,
      :price => self.price,
      :feature => self.feature,
      :modal_number => self.modal_number,
      :color => self.color,
      :quantity => self.quantity,
      :size => self.size,
      :weight => self.weight,
      :made_with => self.made_with,
      :specification => self.specification,
      :thickness => self.thickness,
      :operation_system => self.operation_system,
      :bag_type => self.bag_type,
      :gender => self.gender,
      :footwear_type => self.footwear_type,
      :hat_type => self.hat_type,
      :power => self.power,
      :voltage => self.voltage,
      :dimension => self.dimension,
      :caution => self.caution,
      :charges => self.charges,
      :service_category => self.service_category,
      :fees => self.fees,
      :period => self.period,
      :school => self.school)
  end
  
end
