class FashionAccessoriesController < ApplicationController
  before_action :set_fashion_accessory, only: [:show, :edit, :update, :destroy]
      layout :layout_per_action
  # GET /fashion_accessories
  # GET /fashion_accessories.json
  def index
    @fashion_accessories = FashionAccessory.all
  end

  def product_fashion_accessories
     @fashion_accessories = FashionAccessory.all
  end

  # GET /fashion_accessories/1
  # GET /fashion_accessories/1.json
  def show
  end

  # GET /fashion_accessories/new
  def new
    @fashion_accessory = FashionAccessory.new
  end

  # GET /fashion_accessories/1/edit
  def edit
  end

  # POST /fashion_accessories
  # POST /fashion_accessories.json
  def create
    @fashion_accessory = FashionAccessory.new(fashion_accessory_params)

    respond_to do |format|
      if @fashion_accessory.save
        format.html { redirect_to @fashion_accessory, notice: 'Fashion accessory was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_accessory }
      else
        format.html { render :new }
        format.json { render json: @fashion_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_accessories/1
  # PATCH/PUT /fashion_accessories/1.json
  def update
    respond_to do |format|
      if @fashion_accessory.update(fashion_accessory_params)
        format.html { redirect_to @fashion_accessory, notice: 'Fashion accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_accessory }
      else
        format.html { render :edit }
        format.json { render json: @fashion_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_accessories/1
  # DELETE /fashion_accessories/1.json
  def destroy
    @fashion_accessory.destroy
    respond_to do |format|
      format.html { redirect_to fashion_accessories_url, notice: 'Fashion accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_accessory
      @fashion_accessory = FashionAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_accessory_params
      params.require(:fashion_accessory).permit(:category,:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :made_by_country, :made_with, :description, :brand)
    end

    def layout_per_action
      if action_name == "index" or "product_fashion_accessories"
        "application"
      else
        "backend"
      end
    end
end
