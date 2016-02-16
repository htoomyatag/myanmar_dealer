class FashionFootwearsController < ApplicationController
  before_action :set_fashion_footwear, only: [:show, :edit, :update, :destroy]
    layout :layout_per_action
  # GET /fashion_footwears
  # GET /fashion_footwears.json
  def index
    @fashion_footwears = FashionFootwear.all
  end


  def product_fashion_footwears
    @fashion_footwears = FashionFootwear.all
  end
  # GET /fashion_footwears/1
  # GET /fashion_footwears/1.json
  def show
  end

  # GET /fashion_footwears/new
  def new
    @fashion_footwear = FashionFootwear.new
  end

  # GET /fashion_footwears/1/edit
  def edit
  end

  # POST /fashion_footwears
  # POST /fashion_footwears.json
  def create
    @fashion_footwear = FashionFootwear.new(fashion_footwear_params)

    respond_to do |format|
      if @fashion_footwear.save
        format.html { redirect_to @fashion_footwear, notice: 'Fashion footwear was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_footwear }
      else
        format.html { render :new }
        format.json { render json: @fashion_footwear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_footwears/1
  # PATCH/PUT /fashion_footwears/1.json
  def update
    respond_to do |format|
      if @fashion_footwear.update(fashion_footwear_params)
        format.html { redirect_to @fashion_footwear, notice: 'Fashion footwear was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_footwear }
      else
        format.html { render :edit }
        format.json { render json: @fashion_footwear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_footwears/1
  # DELETE /fashion_footwears/1.json
  def destroy
    @fashion_footwear.destroy
    respond_to do |format|
      format.html { redirect_to fashion_footwears_url, notice: 'Fashion footwear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_footwear
      @fashion_footwear = FashionFootwear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_footwear_params
      params.require(:fashion_footwear).permit(:color,:store_name,:seller_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :made_by_country, :made_with, :description, :footwear_type, :size, :brand)
    end

    def layout_per_action
      if action_name == "index" or "product_fashion_footwears"
           "application"
      else
        "backend"
      end
    end
end
