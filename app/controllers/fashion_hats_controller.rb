class FashionHatsController < ApplicationController
  before_action :set_fashion_hat, only: [:show, :edit, :update, :destroy]
  layout :layout_per_action
    before_action :authenticate_user!, only: [:new]
  # GET /fashion_hats
  # GET /fashion_hats.json
  def index
    @fashion_hats = FashionHat.all
  end

  
  def product_fashion_hats
     @fashion_hats = Product.where(:category => "hats")
  end

  # GET /fashion_hats/1
  # GET /fashion_hats/1.json
  def show
  end

  # GET /fashion_hats/new
  def new
    @fashion_hat = FashionHat.new
       @store_name = Store.where(:user_id => current_user).pluck(:store_name)
  end

  # GET /fashion_hats/1/edit
  def edit
  end

  # POST /fashion_hats
  # POST /fashion_hats.json
  def create
    @fashion_hat = FashionHat.new(fashion_hat_params)

    respond_to do |format|
      if @fashion_hat.save
        format.html { redirect_to my_products_path, notice: 'Fashion hat was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_hat }
      else
        format.html { render :new }
        format.json { render json: @fashion_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_hats/1
  # PATCH/PUT /fashion_hats/1.json
  def update
    respond_to do |format|
      if @fashion_hat.update(fashion_hat_params)
        format.html { redirect_to @fashion_hat, notice: 'Fashion hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_hat }
      else
        format.html { render :edit }
        format.json { render json: @fashion_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_hats/1
  # DELETE /fashion_hats/1.json
  def destroy
    @fashion_hat.destroy
    respond_to do |format|
      format.html { redirect_to fashion_hats_url, notice: 'Fashion hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_hat
      @fashion_hat = FashionHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_hat_params
      params.require(:fashion_hat).permit(:delivery_category,:avatar5_edit,:avatar6_edit,:avatar7_edit,:avatar8_edit,:avatar1_edit,:avatar2_edit,:avatar3_edit,:avatar4_edit,:category,:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :made_by_country, :made_with, :description, :brand, :hat_type)
    end

    def layout_per_action
      if action_name == "index" or "product_fashion_hats"
           "application"
      else
        "backend"
      end
    end
end
