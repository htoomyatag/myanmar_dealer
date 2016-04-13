class Users::RegistrationsController < Devise::RegistrationsController
  

 	def after_sign_in_path_for(users)
   		
   	  if current_user.has_store == nil && current_user.user_type_id == 1
          return new_store_path
      elsif  current_user.has_store == nil && current_user.user_type_id == 2
          return root_path 
      else
          return "/stores/#{@store_id}"	
      end

  	end


  
end



