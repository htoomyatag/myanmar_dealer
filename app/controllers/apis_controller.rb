class ApisController < ApplicationController
  before_action :set_api, only: [:show, :edit, :update, :destroy]

  # GET /apis
  # GET /apis.json
  def index
    @apis = Api.all

  end


  def test_json
      
      @aok = File.read("/#{Rails.root}/app/assets/my_file.txt")
      # render json: @aok 
      render text: @aok   
  

  end

  def set_order_status_by_seller
    
      @order = SellerOrder.find(params[:order_id])
      @order.update(:order_status => params[:order_status])
      # order_status format 
      #order_confirm
      #order_processing
      #order_delivery
      #order_completed
      #order_rejeted

  end


  def seller_buyer_conversation

        @conversation_ids = Conversation.where(:recipient_id => params[:user_id])
        @my_conversation = @conversation_ids.pluck(:id)
        @messages = Message.where(:conversation_id => @my_conversation)

        respond_to do |format|
              my_primary_json = { :Messages => @messages.to_json(:methods => [:avatar_url])}
              my_seconday_json = my_primary_json.to_json.gsub('\\', '')
              a = '"['
              b = ']"'
              my_third_json = my_seconday_json.gsub(a , "[")
              my_fourth_json = my_third_json.gsub(b , "]")
              format.json {render json: my_primary_json}
              format.text {render text: my_fourth_json}
         end
  end

  def view_shop_licensce

    @user_ids = Store.where("store_name = ?", params[:store_name]).pluck(:user_id)
    @stores = User.where(:id => @user_ids).select(:id, :shop_licensce_file_name)

     respond_to do |format|
          my_primary_json = { :Stores => @stores.to_json(:methods => [:avatar_url])}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end

  end


  def order_view_by_seller

    @orders = SellerOrder.where("seller_id = ?", params[:user_id]).select(:order_status,:id,:user_id,:cart_id, :customer_name, :customer_email, :customer_phone, :customer_city, :customer_township, :customer_address)

     respond_to do |format|
          my_primary_json = { :Orders => @orders}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end

  end



  def store_detail_view_by_seller
    @stores = Store.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Stores => @stores}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end

  def store_detail_view_by_buyer
    @stores = Store.where("store_name = ?", params[:store_name])

     respond_to do |format|
          my_primary_json = { :Stores => @stores}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end

  def edit_my_store
       @shops = Store.where("user_id = ?", params[:user_id]).pluck(:id)
       @shop_id = @shops.to_s.gsub('[', '')
       @my_shop_id = @shop_id.to_s.gsub(']', '')
       

       @edit_shop = Store.find(@my_shop_id)
       @edit_shop.update(
        :store_name => params[:store_name],
        :store_address => params[:store_address],
        :store_contact => params[:store_contact],
        :description => params[:description],
        :term => params[:term]
        )



  end

  def edit_my_product

  
        @products = Product.where("user_id = ?", params[:user_id])
        @edit_product = @products.find(params[:product_id])
        @edit_product.update(
          :title => params[:title],
          :ingredient => params[:ingredient],
          :usage => params[:usage],
          :made_by_country => params[:made_by_country],
          :description => params[:description],
          :brand => params[:brand],
          :effect => params[:effect],
          :certification => params[:certification],
          :age_group => params[:age_group],
          :price => params[:price],
          :feature => params[:feature],
          :modal_number => params[:modal_number],
          :color => params[:color],
          :quantity => params[:quantity],
          :size => params[:size],
          :weight => params[:weight],
          :made_with => params[:made_with],
          :specification => params[:specification],
          :thickness => params[:thickness],
          :operation_system => params[:operation_system],
          :bag_type => params[:bag_type],
          :gender => params[:gender],
          :footwear_type => params[:footwear_type],
          :hat_type => params[:hat_type],
          :power => params[:power],
          :voltage => params[:voltage],
          :dimension => params[:dimension],
          :ingredient => params[:ingredient],
          :caution => params[:caution],
          :charges => params[:charges],
          :service_category => params[:service_category],
          :feature => params[:feature]

          )
  
  end

  def my_product_order_list

    @orders = SellerOrder.where("buyer_id = ?", params[:user_id])
    @line_items = LineItem.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Orders => @orders, :LineItems => @line_items }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end

  end


  def order_confirm_list
    @orders = SellerOrder.where(:order_status => "order_confirm").where("buyer_id = ?", params[:user_id])
    @line_items = LineItem.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Orders => @orders, :LineItems => @line_items}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end

  def order_processing_list
    @orders = SellerOrder.where(:order_status => "order_processing").where("buyer_id = ?", params[:user_id])
    @line_items = LineItem.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Orders => @orders, :LineItems => @line_items}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end


  def order_delivery_list
    @orders = SellerOrder.where(:order_status => "order_delivery").where("buyer_id = ?", params[:user_id])
        @line_items = LineItem.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Orders => @orders, :LineItems => @line_items}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end


  def order_completed_list
    
    @orders = SellerOrder.where(:order_status => "order_completed").where("buyer_id = ?", params[:user_id])
        @line_items = LineItem.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Orders => @orders, :LineItems => @line_items}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end

  def order_rejected_list

    @orders = SellerOrder.where(:order_status => "order_rejected").where("buyer_id = ?", params[:user_id])
        @line_items = LineItem.where("user_id = ?", params[:user_id])

     respond_to do |format|
          my_primary_json = { :Orders => @orders, :LineItems => @line_items}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end
  end

  def get_store_product_by_seller

      # http://localhost:3000/get_store_product_by_seller.txt?user_id=1

      @products = Product.where("user_id = ?", params[:user_id])

      respond_to do |format|
          my_primary_json = { :Products => @products}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end

  end

  def get_store_product

      # http://localhost:3000/get_store_product.txt?store_name=S3 fashion

      @products = Product.where("store_name = ?", params[:store_name])

      respond_to do |format|
          my_primary_json = { :Products => @products}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
     end

  end

  def to_send_rating

    # http://localhost:3000/to_send_rating?user_id=1&message=this is msg&product_id=2 
    @comment = Comment.create(:user_id => params[:user_id], :message  => params[:message], :product_id  => params[:product_id] )
  
  end

  def to_send_shipment


    @cart_id = Cart.maximum(:id)+1


    @line_items = LineItem.create(

          :product_id => params[:product_id],
          :cart_id => params[:cart_id],
          :user_id => params[:user_id],
          :quantity => params[:quantity],
          :product_name => params[:product_name]

        )

    @order = Order.create(

      :user_id => params[:user_id], 
      :customer_name  => params[:customer_name], 
      :customer_email  => params[:customer_email],
      :customer_phone  => params[:customer_phone],
      :customer_city  => params[:customer_city],
      :customer_township  => params[:customer_township],
      :customer_address  => params[:customer_address],
      :cart_id  => @cart_id
      )
  end

  def get_rating

    @ratings = Comment.all
    respond_to do |format|
          my_primary_json = { :Rating => @ratings}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end


  end


  def store_desc
    @store_desc = Store.select(:id, :description, :description_image1, :description_image2, :description_image3, :description_image4)

    respond_to do |format|
          my_primary_json = { :StoreDesc => @store_desc}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end



  def last_three_json

    @fashion_clothings = Product.where(:category => "cloths").order('id DESC').last(3)
    @fashion_accessories = Product.where(:category => "fashion_related").order('id DESC').last(3)
    @fashion_bags = Product.where(:category => "bags").order('id DESC').last(3)
    @fashion_footwears = Product.where(:category => "footwears").order('id DESC').last(3)
    @beauty_equipments = Product.where(:category => "beauty_equipments").order('id DESC').last(3)
    @toys = Product.where(:category => "toys").order('id DESC').last(3)
    @telephone_accessories = Product.where(:category => "phone_related").order('id DESC').last(3)
    @computers = Product.where(:category => "computers_laptops").order('id DESC').last(3)
    @electrical_equipments = Product.where(:category => "eletronic_related").order('id DESC').last(3)

    @big_deals = Product.where(:big_deal => "yes").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    
    @hot_items = HotItem.all


 
    respond_to do |format|
          my_primary_json = { 
            :FashionClothings => @fashion_clothings.to_json(:methods => [:avatar_url]),
            :FashionAccessories => @fashion_accessories.to_json(:methods => [:avatar_url]),
            :FashionBags => @fashion_bags.to_json(:methods => [:avatar_url]),
            :FashionFootwears => @fashion_footwears.to_json(:methods => [:avatar_url]),
            :BeautyEquipments => @beauty_equipments.to_json(:methods => [:avatar_url]),
            :Toys => @toys.to_json(:methods => [:avatar_url]),
            :TelephoneAccessories => @telephone_accessories.to_json(:methods => [:avatar_url]),
            :Computers => @computers.to_json(:methods => [:avatar_url]),
            :ElectricalEquipments => @electrical_equipments.to_json(:methods => [:avatar_url]),
            :BigDeals => @big_deals.to_json(:methods => [:avatar_url]),
            :HotItem => @hot_items.to_json


             }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end



  # def fashion_json 
  # end
  
  # def fashion_accessories_json 
  # end

  # def fashion_bag_json 
  # end

  # def footwear_json 
  # end

  # def beauty_json 
  # end

  # def kid_json
  # end

  # def phone_json
  # end

  # def computer_json
  # end
  
  # def electronic_json
  # end

  def my_api_services

    @services = Service.all
  
    respond_to do |format|
          my_primary_json = { :Products => @services.to_json(:methods => [:avatar_url]) }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_big_deals

    @big_deals = Product.where(:big_deal => "yes").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id).where(:big_deal => "yes")



    respond_to do |format|
          my_primary_json = { :Products => @big_deals.to_json(:methods => [:avatar_url]) }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_training_and_schools

    @training_and_schools = TrainingAndSchool.all
  
    respond_to do |format|
          my_primary_json = { :Products => @training_and_schools.to_json(:methods => [:avatar_url])  }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end 

  def my_api_sports

    @sports = Product.where(:category => "sports").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @sports.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end
  



    def my_api_toys

    @toys = Product.where(:category => "toys").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @toys.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

 

  
  def my_api_gifts
    @gifts = Product.where(:category => "gifts").order('id DESC')


    respond_to do |format|
          my_primary_json = { :Products => @gifts.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end
  
  def my_api_car_accessories
    @car_accessories = Product.where(:category => "car_accessories").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @car_accessories.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_motorcycle_accessories
    @motorcycle_accessories = Product.where(:category => "motorcycle").order('id DESC')


    respond_to do |format|
          my_primary_json = { :Products => @motorcycle_accessories.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end
  
  def my_api_machines

    @machines = Product.where(:category => "machines").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @machines.to_json(:methods => [:avatar_url])}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end


  end

  def my_api_instruments

    @instruments = Product.where(:category => "instruments").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @instruments.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  
  end


  def my_api_equipment

    @equipments = Product.where(:category => "equipments").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @equipments.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  
  end

  def my_api_bath_supplies

    @bath_supplies = Product.where(:category => "bath_supplies").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @bath_supplies.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  
  end

  def my_api_makeup_and_skincares


    @makeup_and_skincares = Product.where(:category => "comesmetics").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @makeup_and_skincares.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  
  
  end

  def my_api_beauty_equipments

    @beauty_equipments = Product.where(:category => "beauty_equipments").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @beauty_equipments.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  
  end

  def my_api_medicines

    @medicines = Product.where(:category => "medicines").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @medicines.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end


  end

  def my_api_home_appliances

    @home_appliances = Product.where(:category => "home_appliance").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @home_appliances.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_computers

    @computers = Product.where(:category => "computers_laptops").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @computers.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  
  end


  def my_api_telephone_accessories

    @telephone_accessories = Product.where(:category => "phone_related").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @telephone_accessories.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  

  end

  def my_api_electrical_equipments

    @electrical_equipments = Product.where(:category => "eletronic_related").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @electrical_equipments.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_fashion_hats

    @fashion_hats = Product.where(:category => "hats").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @fashion_hats.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_fashion_footwears

    @fashion_footwears = Product.where(:category => "footwears").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @fashion_footwears.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_fashion_bags

    @fashion_bags = Product.where(:category => "bags").order('id DESC')

    respond_to do |format|
          my_primary_json = { :Products => @fashion_bags.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

  def my_api_fashion_accessories

    @fashion_accessories = Product.where(:category => "fashion_related").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @fashion_accessories.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end
  
  def my_api_fashion_clothings



    @fashion_clothings = Product.where(:category => "cloths").order('id DESC')
    respond_to do |format|
          my_primary_json = { :Products => @fashion_clothings.to_json(:methods => [:avatar_url]) }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end
  
  def my_api_stores

    @stores = Store.all
  
    respond_to do |format|
          my_primary_json = { :Products => @stores.to_json(:methods => [:avatar_url]) }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end



  # GET /apis/1
  # GET /apis/1.json
  def show
  end

  # GET /apis/new
  def new
    @api = Api.new
  end

  # GET /apis/1/edit
  def edit
  end

  # POST /apis
  # POST /apis.json
  def create
    @api = Api.new(api_params)

    respond_to do |format|
      if @api.save
        format.html { redirect_to @api, notice: 'Api was successfully created.' }
        format.json { render :show, status: :created, location: @api }
      else
        format.html { render :new }
        format.json { render json: @api.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apis/1
  # PATCH/PUT /apis/1.json
  def update
    respond_to do |format|
      if @api.update(api_params)
        format.html { redirect_to @api, notice: 'Api was successfully updated.' }
        format.json { render :show, status: :ok, location: @api }
      else
        format.html { render :edit }
        format.json { render json: @api.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apis/1
  # DELETE /apis/1.json
  def destroy
    @api.destroy
    respond_to do |format|
      format.html { redirect_to apis_url, notice: 'Api was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api
      @api = Api.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_params
      params[:api]
    end
end
