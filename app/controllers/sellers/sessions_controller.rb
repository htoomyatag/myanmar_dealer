class Sellers::SessionsController < Devise::SessionsController
  

   	def after_sign_in_path_for(sellers)
   		
   	  if current_seller.has_store == nil
          return new_store_path
      else
          return stores_path	
      end

  	end

end
