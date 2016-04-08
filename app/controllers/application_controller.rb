class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token  
  before_action :set_locale
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end



  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:company_name,:name,:phone,:address, :email, :password, :password_confirmation,:date_of_birth,:gender, :customer_type, :phone_number, :year_of_birth, :user_name)}
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
  end


   protected
	  def my_store
	  	   if current_seller != nil
	  	   @my_stores = Store.where(:seller_id => current_seller.id)
	  	   else
	  	   	@my_stores = Store.all
	  	   end
	  end


  private
  
    before_filter :get_products

  private
  def get_products

     @cart = current_cart
  end

  private
  def current_cart

      Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
      
  end

  def reset_cart
     Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      session[:cart_id] = nil
      cart
  end


end
