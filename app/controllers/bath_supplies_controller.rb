class BathSuppliesController < ApplicationController
  before_action :set_bath_supply, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
  # GET /bath_supplies
  # GET /bath_supplies.json
  def index
    @bath_supplies = BathSupply.all
  end

  

  def product_bath_supplies
     @bath_supplies =Product.where(:category => "bath_supplies")
  end

  # GET /bath_supplies/1
  # GET /bath_supplies/1.json
  def show
  end

  # GET /bath_supplies/new
  def new
    @bath_supply = BathSupply.new
  end

  # GET /bath_supplies/1/edit
  def edit
  end

  # POST /bath_supplies
  # POST /bath_supplies.json
  def create
    @bath_supply = BathSupply.new(bath_supply_params)

    respond_to do |format|
      if @bath_supply.save
        format.html { redirect_to my_products_path, notice: 'Bath supply was successfully created.' }
        format.json { render :show, status: :created, location: @bath_supply }
      else
        format.html { render :new }
        format.json { render json: @bath_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bath_supplies/1
  # PATCH/PUT /bath_supplies/1.json
  def update
    respond_to do |format|
      if @bath_supply.update(bath_supply_params)
        format.html { redirect_to @bath_supply, notice: 'Bath supply was successfully updated.' }
        format.json { render :show, status: :ok, location: @bath_supply }
      else
        format.html { render :edit }
        format.json { render json: @bath_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bath_supplies/1
  # DELETE /bath_supplies/1.json
  def destroy
    @bath_supply.destroy
    respond_to do |format|
      format.html { redirect_to bath_supplies_url, notice: 'Bath supply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bath_supply
      @bath_supply = BathSupply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bath_supply_params
      params.require(:bath_supply).permit(:quantity,:store_name,:user_id,:price,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :category, :ingredient, :usage, :made_by_country, :description, :brand, :effect, :certification, :age_group)
    end

    def layout_per_action
      if action_name == "index" or "product_bath_supplies"
           "application"
      else
        "backend"
      end
    end
end
