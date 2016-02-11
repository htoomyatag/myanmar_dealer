class LineItem < ActiveRecord::Base


	after_create :add_to_product
	
	belongs_to :product
	belongs_to :cart

	def total_price
		product.price * quantity
	end

	

end
