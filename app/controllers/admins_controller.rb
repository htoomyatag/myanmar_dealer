class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  before_filter :is_admin?, :only => [:admin_view_user_report, :admin_view_product_report, :admin_view_order_report, :admin_manage_product, :set_today_deal, :admin_manage_buyer, :admin_manage_company_user, :admin_manage_shop, :admin_manage_seller, :admin_manage_personal_user, :admin_manage_retail_user]


  def is_admin?
    redirect_to "/unauthorized", error: 'You dont have enough permissions to be here' unless current_user.user_type_id == 3
    true
  end

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  def admin_log_in

  end

  def chat_to_seller
        
        @users = User.where("id = ?", params[:id])

        @user_name = User.where("id = ?", params[:user_id]).pluck(:name)
        @raw_user_name = @user_name.to_s.gsub("[", "")
        
        @raw_user_name2 = @raw_user_name.to_s.gsub("]", "")
        @my_user_name = @raw_user_name2.to_s.gsub("\"", "")

        code_one = current_user.name.to_s+@my_user_name
        code_two = @my_user_name+current_user.name.to_s

        @products = Product.where("user_id = ?", params[:user_id])
        @sender_messages = Message.where(:conversation_code => code_one)
        @receiver_messages = Message.where(:conversation_code => code_two)

        @messages = Message.where.any_of(@sender_messages, @receiver_messages)

    


  end

  def admin_manage_shop
     @stores = Store.all
  end

  def admin_manage_seller
    @sellers = User.where(:user_type_id => 1)
  end

  def admin_manage_personal_user
    @sellers = User.where(:user_type_id => 1).where.not(:personal_name => "")
  end

  def admin_manage_retail_user
    @sellers = User.where(:user_type_id => 1).where.not(:retail_name => "")
  end

  def admin_manage_company_user
    @sellers = User.where(:user_type_id => 1).where.not(:staff_name => "")
  end

  def admin_manage_buyer
    @buyers = User.where(:user_type_id => 2)
  end

  def set_today_deal
     @admin = Admin.find(1)
     @products =Product.where.not(:id => 1)
  end

  def admin_set_today_deal
     @admin = Admin.find(1)
     @admin.update(:ends_in =>  "end in", :discount_percent => "90", :price => params[:price])
     redirect_to set_today_deal_path
  end



  def admin_manage_product

  end

 


  def admin_view_order_report
    @orders = Order.all
    @order_amount = Order.count
  end
  
  def admin_view_product_report

    @products = Product.all
    @product_amount = Product.count

  end
  
  def admin_view_user_report
    @users = User.all
    @user_amount = User.count

  end


  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to set_today_deal_path, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to set_today_deal_path, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:ends_in, :discount_percent, :price, :avatar)
    end
end
