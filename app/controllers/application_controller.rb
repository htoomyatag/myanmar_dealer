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
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_type_id,:company_name,:name,:phone,:address, :email, :password, :password_confirmation,:date_of_birth,:gender, :customer_type, :phone_number, :year_of_birth, :user_name)}
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
  end


   protected
	  def my_store
	  	   if current_user != nil
	  	   @my_stores = Store.where(:user_id => current_user.id)
	  	   else
	  	   	@my_stores = Store.all
	  	   end
	  end


  


  private
  
    before_filter :get_products

  private
  def get_products
     @cart = current_cart
     @products = Product.where.not(id: '1')
        if user_signed_in? 
             @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
             @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
             @order_number = Order.where(:user_id => current_user.id).count
             @fav_number = Favourite.where(:user_id => current_user.id).count
             @cart_ids = Order.where(user_id: current_user.id).pluck(:cart_id)
             @purchase_product = LineItem.where(:cart_id => @cart_ids).pluck(:product_id)
        else
        	  @order_number = 0
      		  @fav_number = 0
        end
    
  end

  def is_seller?
    

      if current_user.user_type_id == "1"
        return true
      else
         return false
      end

  end

  def is_buyer?


      if current_user.user_type_id == "2"
        return true
      else
         return false
      end


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
