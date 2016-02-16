class Cart < ActiveRecord::Base

	has_many :line_items, :dependent => :destroy

	def add_item(mmdealer_code,seller_id)
		current_item = line_items.where(:mmdealer_code => mmdealer_code, :seller_id => seller_id).first
		if current_item
			current_item.quantity += 1
		else
			current_item = LineItem.new(:mmdealer_code=> mmdealer_code, :seller_id => seller_id)
			line_items << current_item
		end
		current_item
	end


	def total_price
		line_items.to_a.sum { |product| product.total_price }
	end

    def total_quantity
		line_items.to_a.sum { |product| product.quantity }
	end

	



end
