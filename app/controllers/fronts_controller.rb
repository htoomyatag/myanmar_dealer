class FrontsController < ApplicationController
  before_action :set_front, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:check_out_as_guest]
  
  # GET /fronts
  # GET /fronts.json
   def index
    @fronts = Front.all
   end





  def send_to_pusher

    require 'pusher'

    pusher_client = Pusher::Client.new(

      app_id: '206905',
      key: 'b218d631b3532773d67f',
      secret: '0915071b6a6cdb0a636f'
    );


      Pusher.trigger(params[:channels], 'my_event', {
      message: params[:message],
      channels: params[:channels]
    })


    @conversation = Conversation.create(:sender_id => params[:sender_id] , :recipient_id => params[:recipient_id])
    @message = Message.create(:conversation_code => params[:channels],:user_id => params[:sender_id], :body => params[:message] , :conversation_id => @conversation.id)





  end


   def home
     if params[:category]
        @products = Product.search_with_category(params[:category], params[:title]).where.not(id: '1')
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
         @brand_products = Product.all.select(:brand).uniq
     elsif params[:title]
        @products = Product.search_with_category(params[:category], params[:title]).where.not(id: '1')
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
         @brand_products = Product.all.select(:brand).uniq
     elsif params[:made_by_country]
        @products = Product.where("made_by_country = ?", params[:made_by_country])
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
         @brand_products = Product.all.select(:brand).uniq
     elsif params[:brand]
        @products = Product.where("brand = ?", params[:brand])
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
        @brand_products = Product.all.select(:brand).uniq
     else
        @products = Product.where.not(id: '1')
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
        @brand_products = Product.all.select(:brand).uniq
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
      
   end


 
    def full_productinfo_bath_supplies
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "bath_supplies")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)

    end

    def full_productinfo_beauty_equipments
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "beauty_equipments")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)

    end

    def full_productinfo_car_accessories
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "car_accessories")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
  
    end

    def full_productinfo_computers
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "computers_laptops")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
    end

    def full_productinfo_electrical_equipments
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "eletronic_related")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
    end

    def full_productinfo_equipments
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "equipments")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_fashion_accessories
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "fashion_related")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_fashion_bags
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "bags")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_fashion_clothings
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "cloths")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
  
    end

    def full_productinfo_fashion_footwears
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "footwears")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end


    def full_productinfo_fashion_hats
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "hats")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_gifts
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "gifts")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_home_appliances
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "home_appliance")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
    end

    def full_productinfo_instruments
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "instruments")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_machines
         @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "machines")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_makeup_and_skincares
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "comesmetics")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_medicines
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "medicines")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_motorcycle_accessories
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "motorcycle")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_services
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "service_category")

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
    
    end

    def full_productinfo_sports
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "sports")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
    end

    def full_productinfo_telephone_accessories
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "phone_related")

       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
    end

    def full_productinfo_toys
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "toys")

      @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
    end

    def full_productinfo_training_and_schools
       @product = TrainingAndSchool.find(params[:id])
       @relate_products = TrainingAndSchool.all

        @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
   
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


  def my_conversation
    @chat_users = User.where.not(:id => current_user)


     if params[:user_id]
        @users = User.where("id = ?", params[:user_id])

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


     else
        @users = User.all
        @messages = Message.all
     end

  



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
