class Furniture < ActiveRecord::Base

  after_create :add_to_product

  DELIVERY = ["self_delivery", "transporter_logistics"]

	 def add_to_product

      Product.create( :mmdealer_code => "furnitures"+(Product.maximum(:id).next.to_i).to_s,           
      :title => self.title,
      :weight => self.weight,
      :dimension => self.dimension,
      :price => self.price,
      :made_with => self.made_by,
      :brand => self.brand,
      :avatar1_edit => self.avatar_1,
      :avatar2_edit => self.avatar_2,
      :avatar3_edit => self.avatar_3,
      :avatar4_edit => self.avatar_4,
      :user_id => self.user_id,
      :delivery_category => self.delivery_category,
      :category => "furnitures"
      )
  end


end
