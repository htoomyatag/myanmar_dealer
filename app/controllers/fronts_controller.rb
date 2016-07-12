class FrontsController < ApplicationController
  before_action :set_front, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:check_out]
    layout :layout_per_action
  
  # GET /fronts
  # GET /fronts.json
   def index
    @fronts = Front.all
   end

   def about_add_to_fav

   end


   def download_app

      require 'open-uri'
      url = '/assets/file.txt'
      data = open(url).read
      send_data data, :disposition => 'attachment', :filename=>"file.txt"

   end


  def add_to_favourite
     @favourite = Favourite.create(:item => params[:item], :user_id => params[:user_id], :item_code => params[:item_code])
  end


  def search_result
    if params[:title]
      @products = Product.where("lower(title) LIKE ?", "%#{params[:title].downcase}%")
    elsif params[:store_name]
      @products = Product.where("lower(store_name) LIKE ?", "%#{params[:store_name].downcase}%")
    elsif params[:title2]
      @products = Product.where("lower(title) LIKE ?", "%#{params[:title2].downcase}%")
    else
      flash[:notice] = "nothing found"
    end




  end

  def access_with_qr

     
      if params[:my_ip]

        @read_ip = File.read("/#{Rails.root}/app/assets/file.txt")
        @send_ip = params[:my_ip].to_i 

        # puts "********web***"+@read_ip+"***************"     
        # puts "*******mobile*****"+@send_ip+"***************" 


        if @read_ip.to_i == @send_ip
           render :status => 200, :json => "true"
        else
           render :status => 200, :json => "false"
        end

      else

      end
  
  end


  def login_qr_code

      @my_ip = request.remote_ip

      directory = "/#{Rails.root}/app/assets/"
        File.open(File.join(directory, 'file.txt'), 'w') do |f|
          f.puts @my_ip
      end

    
  end


  def logging_with_qrcode

    require "base64"

    @de_code = Base64.decode64(params[:thecode].to_s)
    @aok = @de_code
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+@aok+"@@@@@@@@@@@@"

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
        if user_signed_in? 
         @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
         @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
        end

     elsif params[:title]
        @products = Product.search_with_category(params[:category], params[:title]).where.not(id: '1')
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
         @brand_products = Product.all.select(:brand).uniq

        if user_signed_in? 
         @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
         @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
        end

     elsif params[:made_by_country]
        @products = Product.where("made_by_country = ?", params[:made_by_country])
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
        @brand_products = Product.all.select(:brand).uniq

        if user_signed_in? 
         @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
         @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
        end

     elsif params[:brand]
        @products = Product.where("brand = ?", params[:brand])
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
        @brand_products = Product.all.select(:brand).uniq

        if user_signed_in? 
         @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
         @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
        end
        
     else
        @products = Product.where.not(id: '1').order('id DESC')
        @side_products = Product.order('id ASC').limit(5).where.not(id: '1')
        @coutry_products = Product.all.select(:made_by_country).uniq
        @brand_products = Product.all.select(:brand).uniq

        if user_signed_in? 
         @raw_store_id = Store.where(:user_id => current_user.id).pluck(:id)
         @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
        end
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

    @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    

   
    
   end


 
    def full_productinfo_bath_supplies
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "bath_supplies")

   @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    

    end

    def full_productinfo_beauty_equipments
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "beauty_equipments")

   @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    

    end

    def full_productinfo_car_accessories
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "car_accessories")

   @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
  
    end

    def full_productinfo_computers
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "computers_laptops")

    @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
    end

    def full_productinfo_electrical_equipments
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "eletronic_related")

    @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
    end

    def full_productinfo_equipments
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "equipments")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_fashion_accessories
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "fashion_related")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_fashion_bags
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "bags")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_fashion_clothings
      @product = Product.find(params[:id])
      @relate_products = Product.where(:category => "cloths")

   @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
  
    end

    def full_productinfo_fashion_footwears
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "footwears")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end


    def full_productinfo_fashion_hats
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "hats")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_gifts
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "gifts")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_home_appliances
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "home_appliance")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
    end

    def full_productinfo_instruments
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "instruments")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_machines
         @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "machines")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_makeup_and_skincares
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "comesmetics")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_medicines
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "medicines")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_motorcycle_accessories
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "motorcycle")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_services
        @product = Product.find(params[:id])
        @relate_products = Product.where(:category => "service_category")

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
    
    end

    def full_productinfo_sports
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "sports")

    @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
    end

    def full_productinfo_telephone_accessories
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "phone_related")

    @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
    end

    def full_productinfo_toys
       @product = Product.find(params[:id])
       @relate_products = Product.where(:category => "toys")

   @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
    end

    def full_productinfo_training_and_schools
       @product = TrainingAndSchool.find(params[:id])
       @relate_products = TrainingAndSchool.all

     @comment = Comment.new
  @comments = Comment.where(:product_id => @product.id)
      if user_signed_in? 
       @users = User.where.not("id = ?",current_user.id).order("created_at DESC").where("id = ?", @product.user_id)
      end
    
   
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


    def layout_per_action
      if action_name == "my_conversation"
           "backend"
      else
        "application"
      end
    end
end
