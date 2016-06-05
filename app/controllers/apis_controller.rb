class ApisController < ApplicationController
  before_action :set_api, only: [:show, :edit, :update, :destroy]

  # GET /apis
  # GET /apis.json
  def index
    @apis = Api.all
  end


  def my_api_services

    @services = Service.all
  
    respond_to do |format|
          my_primary_json = { :Products => @services.to_json(:methods => [:avatar_url])   }
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
          my_primary_json = { :Products => @training_and_schools.to_json(:methods => [:avatar_url])   }
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

    @sports = Sport.all
  
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
    @toys = Toy.all
  
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
    @gifts = Gift.all
  
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
    @car_accessories = CarAccessory.all
  
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
    @motorcycle_accessories = MotorcycleAccessory.all
  
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

    @machines = Machine.all
  
    respond_to do |format|
          my_primary_json = { :Products => @machines.to_json(:methods => [:avatar_url])   }
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

    @instruments = Instrument.all
  
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

    @equipments = Equipment.all
  
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

    @equipments = Equipment.all
  
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

  def my_api_makeup_and_skincares


    @makeup_and_skincares = MakeupAndSkincare.all
  
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

    @beauty_equipments = BeautyEquipment.all
  
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

    @medicines = Medicine.all
  
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

    @home_appliances = HomeAppliance.all
  
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

    @computers = Computer.all
  
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

    @telephone_accessories = TelephoneAccessory.all
  
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

    @electrical_equipments = ElectricalEquipment.all
  
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

    @fashion_hats = FashionHat.all
  
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

    @fashion_footwears = FashionFootwear.all
  
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

    @fashion_bags = FashionBag.all
  
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

    @fashion_accessories = FashionAccessory.all
  
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

    @fashion_clothings = FashionClothing.all
  
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
          my_primary_json = { :Products => @stores.to_json(:methods => [:avatar_url])   }
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
