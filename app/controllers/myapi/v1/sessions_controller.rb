class Myapi::V1::SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  skip_before_filter :verify_signed_out_user, only: :destroy
  respond_to :json



  def create
    warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    render :status => 200,
           :json => { :success => true,
                      :info => "Logged in",
                      :data => { :auth_token => current_user.authentication_token } }
  end

  
   def after_sign_in_path_for(users)

       @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
       @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
      
       if current_user.has_store == nil && current_user.user_type_id == 1
          return new_store_path
      elsif  current_user.has_store == nil && current_user.user_type_id == 2
          return root_path 
      else
          return "/stores/#{@store_id}" 
      end

    end






  def destroy
    warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    current_user.update_column(:authentication_token, nil)
    render :status => 200,
           :json => { :success => true,
                      :info => "Logged out",
                      :data => {} }
  end

  def failure
    render :status => 401,
           :json => { :success => false,
                      :info => "Login Failed",
                      :data => {} }
  end
end