class Sellers::RegistrationsController < Devise::RegistrationsController
  
  
    def after_sign_in_path_for(sellers)
   		
   	  if current_seller.has_store == nil
          return new_store_path
      else
          return "/stores/#{@store_id}"	
      end

  	end

  
end



