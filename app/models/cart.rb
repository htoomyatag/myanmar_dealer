class Cart < ActiveRecord::Base

	has_many :line_items, :dependent => :destroy

	def add_item(product_id,user_id)
		current_item = line_items.where(:product_id => product_id, :user_id => user_id).first
		if current_item
			current_item.quantity += 1
		else
			@raw_product_name = Product.where(:id=> product_id).pluck(:title)
		    @clear_product_name = @raw_product_name.to_s.gsub('["', '')
		    @clean_product_name = @clear_product_name.to_s.gsub('"]', '')

			current_item = LineItem.new(:product_id=> product_id, :user_id => user_id, :product_name => @clean_product_name)
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
