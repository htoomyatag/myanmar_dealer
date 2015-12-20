class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  layout :layout_per_action

  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.all
  end


  # GET /stores/1
  # GET /stores/1.json
  def show
      @products = Product.where(:seller_id => current_seller.id)
      @raw_store_id = Store.where(:seller_id => current_seller.id).pluck(:id)
      @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
         @seller = Seller.find(current_seller.id)
         @seller.update(:has_store => "yes")

        format.html { redirect_to @store, notice: 'Store was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:avatar, :store_name, :store_address, :store_contact, :description, :seller_id, :seller_name)
    end

    def layout_per_action
      if action_name == "index"
           "application"
      elsif action_name == "new"
           "application"
      else
        "backend"
      end
    end
end
