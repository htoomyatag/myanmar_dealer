class HomeAppliancesController < ApplicationController
  before_action :set_home_appliance, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
  # GET /home_appliances
  # GET /home_appliances.json
  def index
    @home_appliances = HomeAppliance.all
  end

  def product_home_appliances
      @home_appliances = HomeAppliance.all
  end

  # GET /home_appliances/1
  # GET /home_appliances/1.json
  def show
  end

  # GET /home_appliances/new
  def new
    @home_appliance = HomeAppliance.new
  end

  # GET /home_appliances/1/edit
  def edit
  end

  # POST /home_appliances
  # POST /home_appliances.json
  def create
    @home_appliance = HomeAppliance.new(home_appliance_params)

    respond_to do |format|
      if @home_appliance.save
        format.html { redirect_to @home_appliance, notice: 'Home appliance was successfully created.' }
        format.json { render :show, status: :created, location: @home_appliance }
      else
        format.html { render :new }
        format.json { render json: @home_appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_appliances/1
  # PATCH/PUT /home_appliances/1.json
  def update
    respond_to do |format|
      if @home_appliance.update(home_appliance_params)
        format.html { redirect_to @home_appliance, notice: 'Home appliance was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_appliance }
      else
        format.html { render :edit }
        format.json { render json: @home_appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_appliances/1
  # DELETE /home_appliances/1.json
  def destroy
    @home_appliance.destroy
    respond_to do |format|
      format.html { redirect_to home_appliances_url, notice: 'Home appliance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_appliance
      @home_appliance = HomeAppliance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_appliance_params
      params.require(:home_appliance).permit(:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :size, :weight, :made_by_country, :description, :brand, :category, :modal_number, :color, :feature, :power, :voltage)
    end

    def layout_per_action
      if action_name == "index" or action_name ==  "product_home_appliances" 
           "application"
      else
        "backend"
      end
    end
end
