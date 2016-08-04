class Users::SessionsController < Devise::SessionsController
  

  def buyer_sign_up

  end

  def buyer_sign_in
 
  end

  def seller_sign_up
  	
  end

  def seller_sign_in

      @my_ip = request.remote_ip

      directory = "/#{Rails.root}/app/assets/"
      File.open(File.join(directory, 'file.txt'), 'w') do |f|
          f.puts @my_ip
      end


  end


   def after_sign_in_path_for(users)

   		 @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
     	 @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
   		
   	   if current_user.has_store == nil && current_user.user_type_id == 1
          return new_store_path
      elsif  current_user.has_store == nil && current_user.user_type_id == 2
          return root_path 
       elsif  current_user.has_store == nil && current_user.user_type_id == 3
          return admin_manage_seller_path
      else
          return "/stores/#{@store_id}"	
      end

  	end


    def new

    end



end
