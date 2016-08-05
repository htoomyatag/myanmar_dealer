class Furniture < ActiveRecord::Base

  after_create :add_to_product

	 def add_to_product

      Product.create( :mmdealer_code => "furnitures"+(Product.maximum(:id).next.to_i).to_s,            :user_id => self.user_id,
            :seller_name => @seller_name,
      :title => self.title,
      :weight => self.weight,
      :dimension => self.dimension,
      :price => self.price,
      :made_with => self.made_with,
      :brand => self.brand,
      :avatar1_edit => self.avatar_1,
                  :user_id => self.user_id,
            :seller_name => @seller_name,
      :category => "furnitures"
      )
  end


end
