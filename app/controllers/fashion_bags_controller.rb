class FashionBagsController < ApplicationController
  before_action :set_fashion_bag, only: [:show, :edit, :update, :destroy]
    layout :layout_per_action
  # GET /fashion_bags
  # GET /fashion_bags.json
  def index
    @fashion_bags = FashionBag.all
  end

  def product_fashion_bags
    @fashion_bags = Product.where(:category => "bags")
  end

  # GET /fashion_bags/1
  # GET /fashion_bags/1.json
  def show
  end

  # GET /fashion_bags/new
  def new
    @fashion_bag = FashionBag.new
  end

  # GET /fashion_bags/1/edit
  def edit
  end

  # POST /fashion_bags
  # POST /fashion_bags.json
  def create
    @fashion_bag = FashionBag.new(fashion_bag_params)

    respond_to do |format|
      if @fashion_bag.save
        format.html { redirect_to my_products_path, notice: 'Fashion bag was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_bag }
      else
        format.html { render :new }
        format.json { render json: @fashion_bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_bags/1
  # PATCH/PUT /fashion_bags/1.json
  def update
    respond_to do |format|
      if @fashion_bag.update(fashion_bag_params)
        format.html { redirect_to @fashion_bag, notice: 'Fashion bag was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_bag }
      else
        format.html { render :edit }
        format.json { render json: @fashion_bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_bags/1
  # DELETE /fashion_bags/1.json
  def destroy
    @fashion_bag.destroy
    respond_to do |format|
      format.html { redirect_to fashion_bags_url, notice: 'Fashion bag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_bag
      @fashion_bag = FashionBag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_bag_params
      params.require(:fashion_bag).permit(:color,:category,:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :made_by_country, :made_with, :description, :bag_type, :size, :brand)
    end

    def layout_per_action
      if action_name == "index" or "product_fashion_bags"
        "application"
      else
        "backend"
      end
    end
end
