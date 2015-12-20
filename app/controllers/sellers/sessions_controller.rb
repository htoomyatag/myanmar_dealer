class Sellers::SessionsController < Devise::SessionsController
  

   	def after_sign_in_path_for(sellers)

   		 @raw_store_id = Store.where(:seller_id => current_seller.id).pluck(:id)
     	 @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
   		
   	  if current_seller.has_store == nil
          return new_store_path
      else
          return "/stores/#{@store_id}"	
      end

  	end

end
