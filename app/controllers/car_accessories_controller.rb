class CarAccessoriesController < ApplicationController
  before_action :set_car_accessory, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
     before_action :authenticate_user!, only: [:new]
  # GET /car_accessories
  # GET /car_accessories.json
  def index
    @car_accessories = CarAccessory.all
  end

  def product_car_accessories
      @car_accessories = Product.where(:category => "car_accessories")
  end

  # GET /car_accessories/1
  # GET /car_accessories/1.json
  def show
  end

  # GET /car_accessories/new
  def new
    @car_accessory = CarAccessory.new
       @store_name = Store.where(:user_id => current_user).pluck(:store_name)
  end

  # GET /car_accessories/1/edit
  def edit
  end

  # POST /car_accessories
  # POST /car_accessories.json
  def create
    @car_accessory = CarAccessory.new(car_accessory_params)

    respond_to do |format|
      if @car_accessory.save
        format.html { redirect_to my_products_path, notice: 'Car accessory was successfully created.' }
        format.json { render :show, status: :created, location: @car_accessory }
      else
        format.html { render :new }
        format.json { render json: @car_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_accessories/1
  # PATCH/PUT /car_accessories/1.json
  def update
    respond_to do |format|
      if @car_accessory.update(car_accessory_params)
        format.html { redirect_to @car_accessory, notice: 'Car accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_accessory }
      else
        format.html { render :edit }
        format.json { render json: @car_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_accessories/1
  # DELETE /car_accessories/1.json
  def destroy
    @car_accessory.destroy
    respond_to do |format|
      format.html { redirect_to car_accessories_url, notice: 'Car accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_accessory
      @car_accessory = CarAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_accessory_params
      params.require(:car_accessory).permit(:delivery_category,:avatar5_edit,:avatar6_edit,:avatar7_edit,:avatar8_edit,:avatar1_edit,:avatar2_edit,:avatar3_edit,:avatar4_edit,:category,:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :size, :weight, :made_by_country, :made_with, :description, :brand, :specification, :modal_number, :color, :feature)
    end

    def layout_per_action
      if action_name == "index" or "product_car_accessories"
           "application"
      else
        "backend"
      end
    end
end
