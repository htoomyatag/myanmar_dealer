class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  layout :layout_per_action
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
     @raw_store_id = Store.where(:seller_id => current_seller.id).pluck(:id)
      @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
  end

  # GET /products/new
  def new
    @product = Product.new
     @raw_store_id = Store.where(:seller_id => current_seller.id).pluck(:id)
      @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

     @raw_store_id = Store.where(:seller_id => current_seller.id).pluck(:id)
     @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")

    respond_to do |format|
      if @product.save
        format.html { redirect_to "/stores/#{@store_id}"}
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :color, :size, :weight, :seller_id)
    end

    def layout_per_action
      if action_name == "index"
           "application"
      else
        "backend"
      end
    end
end
