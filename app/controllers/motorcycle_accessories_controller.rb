class MotorcycleAccessoriesController < ApplicationController
  before_action :set_motorcycle_accessory, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
  # GET /motorcycle_accessories
  # GET /motorcycle_accessories.json
  def index
    @motorcycle_accessories = MotorcycleAccessory.all
  end

  def product_motorcycle_accessories
    @motorcycle_accessories = MotorcycleAccessory.all
  end

  # GET /motorcycle_accessories/1
  # GET /motorcycle_accessories/1.json
  def show
  end

  # GET /motorcycle_accessories/new
  def new
    @motorcycle_accessory = MotorcycleAccessory.new
  end

  # GET /motorcycle_accessories/1/edit
  def edit
  end

  # POST /motorcycle_accessories
  # POST /motorcycle_accessories.json
  def create
    @motorcycle_accessory = MotorcycleAccessory.new(motorcycle_accessory_params)

    respond_to do |format|
      if @motorcycle_accessory.save
        format.html { redirect_to @motorcycle_accessory, notice: 'Motorcycle accessory was successfully created.' }
        format.json { render :show, status: :created, location: @motorcycle_accessory }
      else
        format.html { render :new }
        format.json { render json: @motorcycle_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motorcycle_accessories/1
  # PATCH/PUT /motorcycle_accessories/1.json
  def update
    respond_to do |format|
      if @motorcycle_accessory.update(motorcycle_accessory_params)
        format.html { redirect_to @motorcycle_accessory, notice: 'Motorcycle accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @motorcycle_accessory }
      else
        format.html { render :edit }
        format.json { render json: @motorcycle_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motorcycle_accessories/1
  # DELETE /motorcycle_accessories/1.json
  def destroy
    @motorcycle_accessory.destroy
    respond_to do |format|
      format.html { redirect_to motorcycle_accessories_url, notice: 'Motorcycle accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motorcycle_accessory
      @motorcycle_accessory = MotorcycleAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motorcycle_accessory_params
      params.require(:motorcycle_accessory).permit(:store_name,:seller_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :size, :weight, :made_by_country, :made_with, :description, :brand, :specification, :modal_number, :color, :feature)
    end

    
    def layout_per_action
      if action_name == "index" or action_name ==  "product_motorcycle_accessories" 
           "application"
      else
        "backend"
      end
    end
end
