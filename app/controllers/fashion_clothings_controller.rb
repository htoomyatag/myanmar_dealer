class FashionClothingsController < ApplicationController
  before_action :set_fashion_clothing, only: [:show, :edit, :update, :destroy]
    layout :layout_per_action
  # GET /fashion_clothings
  # GET /fashion_clothings.json
  def index
    @fashion_clothings = FashionClothing.all
  end

  def product_fashion_clothings
    @fashion_clothings = FashionClothing.all
  end

  # GET /fashion_clothings/1
  # GET /fashion_clothings/1.json
  def show
  end

  # GET /fashion_clothings/new
  def new
    @fashion_clothing = FashionClothing.new
  end

  # GET /fashion_clothings/1/edit
  def edit
  end

  # POST /fashion_clothings
  # POST /fashion_clothings.json
  def create
    @fashion_clothing = FashionClothing.new(fashion_clothing_params)

    respond_to do |format|
      if @fashion_clothing.save
        format.html { redirect_to @fashion_clothing, notice: 'Fashion clothing was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_clothing }
      else
        format.html { render :new }
        format.json { render json: @fashion_clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_clothings/1
  # PATCH/PUT /fashion_clothings/1.json
  def update
    respond_to do |format|
      if @fashion_clothing.update(fashion_clothing_params)
        format.html { redirect_to @fashion_clothing, notice: 'Fashion clothing was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_clothing }
      else
        format.html { render :edit }
        format.json { render json: @fashion_clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_clothings/1
  # DELETE /fashion_clothings/1.json
  def destroy
    @fashion_clothing.destroy
    respond_to do |format|
      format.html { redirect_to fashion_clothings_url, notice: 'Fashion clothing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_clothing
      @fashion_clothing = FashionClothing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_clothing_params
      params.require(:fashion_clothing).permit(:store_name,:color,:seller_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :size, :made_by_country, :made_with, :description, :gender, :brand)
    end

    def layout_per_action
      if action_name == "index" or action_name ==  "product_fashion_clothings" 
           "application"
      else
        "backend"
      end
    end
end
