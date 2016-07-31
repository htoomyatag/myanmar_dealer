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
          my_primary_json = { :Products => @big_deals.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json }
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

    @sports = Product.where(:category => "sports").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:weight, :made_by_country, :made_with, :color, :brand).where(:category => "sports")

    respond_to do |format|
          my_primary_json = { :Products => @sports.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end
  
  # def my_api_toys
  #   @toys = Product.where(:category => "toys").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
  #   @specifications = Product.select(:id,:description,:weight,:made_by_country,:made_with,:color,:age_group).where(:category => "toys")
  #   @aok = {@toys}
  
  #   respond_to do |format|
  #         my_primary_json = { 
            
  #           :Products => @aok.to_json(:methods => [:avatar_url])

  #         }
  #         my_seconday_json = my_primary_json.to_json.gsub('\\', '')
  #         a = '"['
  #         b = ']"'
  #         my_third_json = my_seconday_json.gsub(a , "[")
  #         my_fourth_json = my_third_json.gsub(b , "]")
  #         format.json {render json: my_primary_json}
  #         format.text {render text: my_fourth_json}
  #   end
  # end

 

  
  def my_api_gifts
    @gifts = Product.where(:category => "gifts").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:weight, :made_by_country, :made_with, :description, :color).where(:category => "gifts")


    respond_to do |format|
          my_primary_json = { :Products => @gifts.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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
    @car_accessories = Product.where(:category => "car_accessories").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:size, :weight, :made_by_country, :made_with, :brand, :specification, :modal_number, :color, :feature).where(:category => "car_accessories")


    respond_to do |format|
          my_primary_json = { :Products => @car_accessories.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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
    @motorcycle_accessories = Product.where(:category => "motorcycle").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select( ).where(:category => "motorcycle")



    respond_to do |format|
          my_primary_json = { :Products => @motorcycle_accessories.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @machines = Product.where(:category => "machines").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:dimension, :weight, :made_by_country, :made_with, :description, :brand, :category, :modal_number, :specification, :color).where(:category => "machines")

    respond_to do |format|
          my_primary_json = { :Products => @machines.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @instruments = Product.where(:category => "instruments").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:dimension, :weight, :made_by_country, :made_with, :description, :brand, :modal_number, :specification, :color).where(:category => "instruments")


    respond_to do |format|
          my_primary_json = { :Products => @instruments.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @equipments = Product.where(:category => "equipments").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
  @specifications = Product.select(:id,:description, :size, :weight, :made_by_country, :made_with, :description, :brand, :specification, :modal_number, :color).where(:category => "equipments")

    respond_to do |format|
          my_primary_json = { :Products => @equipments.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @bath_supplies = Product.where(:category => "bath_supplies").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:ingredient, :usage, :made_by_country, :description, :brand, :effect, :certification, :age_group).where(:category => "bath_supplies")


    respond_to do |format|
          my_primary_json = { :Products => @bath_supplies.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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


    @makeup_and_skincares = Product.where(:category => "comesmetics").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:certification, :ingredient, :usage, :made_by_country, :brand, :color, :effect).where(:category => "comesmetics")
    
    respond_to do |format|
          my_primary_json = { :Products => @makeup_and_skincares.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @beauty_equipments = Product.where(:category => "beauty_equipments").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:brand, :made_by_country, :feature, :modal_number, :color).where(:category => "beauty_equipments")

    respond_to do |format|
          my_primary_json = { :Products => @beauty_equipments.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @medicines = Product.where(:category => "medicines").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:certification, :ingredient, :usage, :made_by_country, :caution).where(:category => "medicines")

    respond_to do |format|
          my_primary_json = { :Products => @medicines.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @home_appliances = Product.where(:category => "home_appliance").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
      @specifications = Product.select(:id,:description,:modal_number, :color, :feature, :power, :voltage,:size, :weight, :made_by_country).where(:category => "home_appliance")

    respond_to do |format|
          my_primary_json = { :Products => @home_appliances.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @computers = Product.where(:category => "computers_laptops").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
   @specifications = Product.select(:id,:description,:size,:weight,:thickness,:made_by_country,:brand,:color,:feature,:modal_number,:operation_system ).where(:category => "computers_laptops")

    respond_to do |format|
          my_primary_json = { :Products => @computers.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @telephone_accessories = Product.where(:category => "phone_related").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
   @specifications = Product.select(:id,:description,:size,:weight,:feature,:color,:modal_number,:brand).where(:category => "phone_related")

    respond_to do |format|
          my_primary_json = { :Products => @telephone_accessories.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @electrical_equipments = Product.where(:category => "eletronic_related").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
     @specifications = Product.select(:id ,:size,:weight,:brand,:made_by_country,:modal_number,:color).where(:category => "eletronic_related")

    respond_to do |format|
          my_primary_json = { :Products => @electrical_equipments.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @fashion_hats = Product.where(:category => "hats").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
      @specifications = Product.select(:id,:description,:made_by_country,:made_with,:hat_type,:brand).where(:category => "hats")

    respond_to do |format|
          my_primary_json = { :Products => @fashion_hats.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @fashion_footwears = Product.where(:category => "footwears").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:made_by_country,:made_with,:footwear_type,:size,:brand,:color  ).where(:category => "footwears")

    respond_to do |format|
          my_primary_json = { :Products => @fashion_footwears.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @fashion_bags = Product.where(:category => "bags").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
     @specifications = Product.select(:id,:description,:made_by_country,:made_with,:bag_type,:size,:brand,:color ).where(:category => "bags")


    respond_to do |format|
          my_primary_json = { :Products => @fashion_bags.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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

    @fashion_accessories = Product.where(:category => "fashion_related").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
       @specifications = Product.select(:id,:description,:made_by_country,:made_with,:brand).where(:category => "fashion_related")

    respond_to do |format|
          my_primary_json = { :Products => @fashion_accessories.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json   }
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



    @fashion_clothings = Product.where(:category => "cloths").select(:id,:title,:price,:store_name, :price, :quantity, :avatar1_file_name, :avatar2_file_name, :avatar3_file_name, :avatar4_file_name)
    @specifications = Product.select(:id,:description,:size,:made_by_country,:made_with,:gender,:brand,:color).where(:category => "cloths")

    respond_to do |format|
          my_primary_json = { :Products => @fashion_clothings.to_json(:methods => [:avatar_url]), :Specifications => @specifications.to_json }
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
