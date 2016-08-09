class Furniture < ActiveRecord::Base

  after_create :add_to_product

  DELIVERY = ["self_delivery", "transporter_logistics"]

	 def add_to_product


     raw_seller_name = User.where(:id => self.user_id).pluck(:name)
     @config_seller = raw_seller_name.to_s.gsub('["', '')
     @seller_name = @config_seller.to_s.gsub('"]', '')

     

      Product.create( :mmdealer_code => "furnitures"+(Product.maximum(:id).next.to_i).to_s,           
      :title => self.title,
      :weight => self.weight,
      :dimension => self.dimension,
      :price => self.price,
      :made_with => self.made_by,
           :store_name => self.store_name,
      :brand => self.brand,
      :avatar1_edit => self.avatar_1,
      :avatar2_edit => self.avatar_2,
      :avatar3_edit => self.avatar_3,
      :avatar4_edit => self.avatar_4,
      :avatar5_edit => self.avatar5_edit,
      :avatar6_edit => self.avatar6_edit,
      :avatar7_edit => self.avatar7_edit,
      :avatar8_edit => self.avatar8_edit,
      :user_id => self.user_id,
      :delivery_category => self.delivery_category,
      :category => "furnitures",
      :seller_name => @seller_name
      )
  end


end
