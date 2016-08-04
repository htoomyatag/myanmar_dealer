class Order < ActiveRecord::Base


  after_save :add_sellers

  CITY = ["YANGON", "MANDALAY", "NAYPYITAW", "TAUNGGYI"]
  TOWNSHIP =  			["Ahlone",  
                        "Kyimyindaing",
                        "Sanchaung",
                        "Latha",
                        "Lanmadaw",
                        "Pabedan", 
                        "Kyauktada",
                        "Botahtaung",
                        "Pazundaung",
                        "Tamwe",
                        "Mingalar taung nyunt",
                        "Thingangyun",
                        "Thuwunna",
                        "Bahan", 
                        "Hlaing",
                        "Mayangon",
                        "Yankin",
                        "Tharkayta",
                    	"Dagon myothit(south)",
                    	"Dagon myothit(north)",  
                    	"Dagon myothit(east)", 
                    	"Dagon myothit(west)", 
                   		"Okkalapa(south)", 
                   		"Okkalapa(north)",         
                    	"Bayintnaung", 
                    	"Insein",  
                    	"Sawbuagyigong", 
                    	"Mingalardon" ]


	

	def total_price
		line_items.to_a.sum { |product| product.total_price }
	end

    def total_quantity
		line_items.to_a.sum { |product| product.quantity }
	end

    def add_sellers
          @product_ids = LineItem.where(:cart_id => self.cart_id).pluck(:product_id)
          @seller_ids = Product.where(:id => @product_ids).pluck(:user_id) 
          @seller_ids.each do |p|

            SellerOrder.create(

                :seller_id => p,
                :order_status => self.order_status,
                :buyer_id => self.user_id,
                :cart_id => self.cart_id,
                :customer_name => self.customer_name,
                :customer_email => self.customer_email,
                :customer_phone => self.customer_phone,
                :customer_city => self.customer_city,
                :customer_township => self.customer_township,
                :customer_address => self.customer_address

              )

          end




          

    end
	
end
