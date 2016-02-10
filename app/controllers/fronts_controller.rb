class FrontsController < ApplicationController
  before_action :set_front, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_buyer!, only: [:check_out]
  
  # GET /fronts
  # GET /fronts.json
   def index
    @fronts = Front.all
   end

   def product_by_category
    if params[:category].nil?
      @products = Product.all
    else
      @products = Product.where(:product_category  => params[:category])
    end
   end

   def home
      @products = Product.all
      @side_products = Product.order('id ASC').limit(5)
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
   end


    def full_productinfo_bath_supplies
      @product = BathSupply.find(params[:id])
      @relate_products = BathSupply.all
    end

    def full_productinfo_beauty_equipments
      @product = BeautyEquipment.find(params[:id])
      @relate_products = BeautyEquipment.all
    end

    def full_productinfo_car_accessories
      @product = CarAccessory.find(params[:id])
      @relate_products = CarAccessory.all
    end

    def full_productinfo_computers
       @product = Computer.find(params[:id])
       @relate_products = Computer.all
    end

    def full_productinfo_electrical_equipments
       @product = ElectricalEquipment.find(params[:id])
       @relate_products = ElectricalEquipment.all
    end

    def full_productinfo_equipments
        @product = Equipment.find(params[:id])
        @relate_products = Equipment.all
    end

    def full_productinfo_fashion_accessories
        @product = FashionAccessory.find(params[:id])
        @relate_products = FashionAccessory.all
    end

    def full_productinfo_fashion_bags
        @product = FashionBag.find(params[:id])
        @relate_products = FashionBag.all
    end

    def full_productinfo_fashion_clothings
      @product = FashionClothing.find(params[:id])
      @relate_products = FashionClothing.all
    end

    def full_productinfo_fashion_footwears
        @product = FashionFootwear.find(params[:id])
        @relate_products = FashionFootwear.all
    end


    def full_productinfo_fashion_hats
        @product = FashionHat.find(params[:id])
        @relate_products = FashionHat.all
    end

    def full_productinfo_gifts
        @product = Gift.find(params[:id])
        @relate_products = Gift.all
    end

    def full_productinfo_home_appliances
        @product = HomeAppliance.find(params[:id])
        @relate_products = HomeAppliance.all
    end

    def full_productinfo_instruments
        @product = Instrument.find(params[:id])
        @relate_products = Instrument.all
    end

    def full_productinfo_machines
         @product = Machine.find(params[:id])
        @relate_products = Machine.all
    end

    def full_productinfo_makeup_and_skincares
        @product = MakeupAndSkincare.find(params[:id])
        @relate_products = MakeupAndSkincare.all
    end

    def full_productinfo_medicines
        @product = Medicine.find(params[:id])
        @relate_products = Medicine.all
    end

    def full_productinfo_motorcycle_accessories
        @product = MotorcycleAccessory.find(params[:id])
        @relate_products = MotorcycleAccessory.all
    end

    def full_productinfo_services
        @product = Service.find(params[:id])
        @relate_products = Service.all
    end

    def full_productinfo_sports
       @product = Sport.find(params[:id])
       @relate_products = Sport.all
    end

    def full_productinfo_telephone_accessories
       @product = TelephoneAccessory.find(params[:id])
       @relate_products = TelephoneAccessory.all
    end

    def full_productinfo_toys
       @product = Toy.find(params[:id])
       @relate_products = Toy.all
    end

    def full_productinfo_training_and_schools
        @product = TrainingAndSchool.find(params[:id])
       @relate_products = TrainingAndSchool.all
    end

    def register
    end

    def fashion_related

    end
     
    def electronics_related

    end

    def health_beauty_related
     
    end
     
    def industrial_part

    end
    def auto_transportation

    end
    def sports_related
    end 

    def service_related

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
