class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
     before_action :authenticate_user!, only: [:new]
  # GET /toys
  # GET /toys.json
  def index
    @toys = Toy.all
  end

  def product_toys
     @toys = Product.where(:category => "toys")
  end

  # GET /toys/1
  # GET /toys/1.json
  def show
  end

  # GET /toys/new
  def new
    @toy = Toy.new
       @store_name = Store.where(:user_id => current_user).pluck(:store_name)
  end

  # GET /toys/1/edit
  def edit
  end

  # POST /toys
  # POST /toys.json
  def create
    @toy = Toy.new(toy_params)

    respond_to do |format|
      if @toy.save
        format.html { redirect_to my_products_path, notice: 'Toy was successfully created.' }
        format.json { render :show, status: :created, location: @toy }
      else
        format.html { render :new }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toys/1
  # PATCH/PUT /toys/1.json
  def update
    respond_to do |format|
      if @toy.update(toy_params)
        format.html { redirect_to @toy, notice: 'Toy was successfully updated.' }
        format.json { render :show, status: :ok, location: @toy }
      else
        format.html { render :edit }
        format.json { render json: @toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toys/1
  # DELETE /toys/1.json
  def destroy
    @toy.destroy
    respond_to do |format|
      format.html { redirect_to toys_url, notice: 'Toy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = Toy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toy_params
      params.require(:toy).permit(:delivery_category,:avatar5_edit,:avatar6_edit,:avatar7_edit,:avatar8_edit,:avatar1_edit,:avatar2_edit,:avatar3_edit,:avatar4_edit,:category,:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :weight, :made_by_country, :made_with, :description, :color, :age_group)
    end

    def layout_per_action
      if action_name == "index" or "product_toys" 
        "application"
      else
        "backend"
      end
    end
end
