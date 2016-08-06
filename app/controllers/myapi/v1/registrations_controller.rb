class Myapi::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }


 before_filter :configure_permitted_parameters
 respond_to :json

  def create
    build_resource
    if resource.save
      sign_in resource
      render :status => 200,
           :json => { :success => true,
                      :info => "Registered",
                      :data => { :user => resource,
                                 :auth_token => current_user.authentication_token, :user_id => current_user.id, :user_name => current_user.name, :email => current_user.email, :user_type_id => current_user.user_type_id} }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => resource.errors,
                        :data => {} }
    end
  end


  def user_new
    @user = User.create(:name => params[:name], :email => params[:email],:password => params[:password],:password_confirmation => params[:password_confirmation])
  end


  def after_sign_in_path_for(users)
      
      if current_user.has_store == nil && current_user.user_type_id == 1
          return new_store_path
      elsif  current_user.has_store == nil && current_user.user_type_id == 2
          return root_path 
      elsif  current_user.user_type_id == 3
          return admin_manage_seller_path
      else
          return "/stores/#{@store_id}" 
      end

    end







private

def sign_up_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
end

 



end