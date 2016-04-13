class FrontsController < ApplicationController
  before_action :set_front, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:check_out]
  
  # GET /fronts
  # GET /fronts.json
   def index
    @fronts = Front.all
   end

   def my_conversation
      @users = User.where.not("id = ?",current_user.id).order("created_at DESC")
      @conversations = Conversation.involving(current_user).order("created_at DESC")

   end


   def home
     if params[:category]
        @products = Product.search_with_category(params[:category], params[:title])
        @side_products = Product.order('id ASC').limit(5)
     elsif params[:title]
        @products = Product.search_with_category(params[:category], params[:title])
        @side_products = Product.order('id ASC').limit(5)
     else
        @products = Product.all
        @side_products = Product.order('id ASC').limit(5)
     end
   end

   def check_out
       @order = Order.new
   end


   def check_out_as_guest
       @order = Order.new
   end

   def thanks_you
    
   end

   def about
   end
   
   def cart
   end

   def category
   end

   def category_list
   end

   def compare
   end

   def contact

   end

   def login
   end

   def product
   end

   def product_full
     @product = Product.find(params[:id])
     @relate_product = Product.where(:product_category => @product.product_category)

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      @conversations = Conversation.involving(current_user).order("created_at DESC")
   end


 
    def full_productinfo_bath_supplies
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "bath_supplies")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_beauty_equipments
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "beauty_equipments")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_car_accessories
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "car_accessories")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_computers
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "computers_laptops")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_electrical_equipments
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "eletronic_related")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_equipments
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "equipments")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_fashion_accessories
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "fashion_related")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_fashion_bags
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "bags")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_fashion_clothings
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "cloths")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_fashion_footwears
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "footwears")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end


    def full_productinfo_fashion_hats
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "hats")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_gifts
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "gifts")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_home_appliances
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "home_appliance")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_instruments
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "instruments")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_machines
         @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "machines")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_makeup_and_skincares
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "comesmetics")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_medicines
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "medicines")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_motorcycle_accessories
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "motorcycle")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_services
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "service_category")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
        @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_sports
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "sports")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_telephone_accessories
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "phone_related")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_toys
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "toys")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def full_productinfo_training_and_schools
       @product = TrainingAndSchool.find(params[:id])
       @relate_products = TrainingAndSchool.all

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
       @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

    def register
    end

    def fashion_related
        @fashion_accessories = Product.where(:category => "fashion_related")
        @fashion_bags = Product.where(:category => "bags")
        @fashion_hats = Product.where(:category => "hats")
        @fashion_footwears = Product.where(:category => "footwears")
        @fashion_clothings = Product.where(:category => "cloths")

    end
     
    def electronics_related
        @electrical_equipments = Product.where(:category => "eletronic_related")
        @computers = Product.where(:category => "computers_laptops")
        @telephone_accessories = Product.where(:category => "phone_related")
        @home_appliances = Product.where(:category => "home_appliance")

     
    end

    def health_beauty_related
       @medicines = Product.where(:category => "medicines")
       @bath_supplies = Product.where(:category => "bath_supplies")
       @beauty_equipments = Product.where(:category => "beauty_equipments")
       @makeup_and_skincares = Product.where(:category => "comesmetics")


     
    end
     
    def industrial_part
       @equipments = Product.where(:category => "equipments")
       @product_machines = Product.where(:category => "machines")
       @instruments = Product.where(:category => "instruments")

   


    end
    def auto_transportation
       @car_accessories = Product.where(:category => "car_accessories")
       @motorcycle_accessories = Product.where(:category => "motorcycle")


    end
    def sports_related
       @sports = Product.where(:category => "sports")
       @gifts = Product.where(:category => "gifts")
       @toys = Product.where(:category => "toys")



    end 

    def service_related
        @customer_services = Service.all
        @training_and_schools = TrainingAndSchool.all

    
    end




  # GET /fronts/1
  # GET /fronts/1.json
  def show
  end

  # GET /fronts/new
  def new
    @front = Front.new
  end

  # GET /fronts/1/edit
  def edit
  end

  # POST /fronts
  # POST /fronts.json
  def create
    @front = Front.new(front_params)

    respond_to do |format|
      if @front.save
        format.html { redirect_to @front, notice: 'Front was successfully created.' }
        format.json { render :show, status: :created, location: @front }
      else
        format.html { render :new }
        format.json { render json: @front.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fronts/1
  # PATCH/PUT /fronts/1.json
  def update
    respond_to do |format|
      if @front.update(front_params)
        format.html { redirect_to @front, notice: 'Front was successfully updated.' }
        format.json { render :show, status: :ok, location: @front }
      else
        format.html { render :edit }
        format.json { render json: @front.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fronts/1
  # DELETE /fronts/1.json
  def destroy
    @front.destroy
    respond_to do |format|
      format.html { redirect_to fronts_url, notice: 'Front was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_front
      @front = Front.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def front_params
      params[:front]
    end
end
