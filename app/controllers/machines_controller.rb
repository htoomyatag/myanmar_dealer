class MachinesController < ApplicationController
  before_action :set_machine, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
     before_action :authenticate_user!, only: [:new]
  # GET /machines
  # GET /machines.json
  def index
    @machines = Machine.all
  end

  def product_machines
    @product_machines = Product.where(:category => "machines")
  end

  # GET /machines/1
  # GET /machines/1.json
  def show
  end

  # GET /machines/new
  def new
    @machine = Machine.new
       @store_name = Store.where(:user_id => current_user).pluck(:store_name)
  end

  # GET /machines/1/edit
  def edit
  end

  # POST /machines
  # POST /machines.json
  def create
    @machine = Machine.new(machine_params)

    respond_to do |format|
      if @machine.save
        format.html { redirect_to my_products_path, notice: 'Machine was successfully created.' }
        format.json { render :show, status: :created, location: @machine }
      else
        format.html { render :new }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machines/1
  # PATCH/PUT /machines/1.json
  def update
    respond_to do |format|
      if @machine.update(machine_params)
        format.html { redirect_to @machine, notice: 'Machine was successfully updated.' }
        format.json { render :show, status: :ok, location: @machine }
      else
        format.html { render :edit }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machines/1
  # DELETE /machines/1.json
  def destroy
    @machine.destroy
    respond_to do |format|
      format.html { redirect_to machines_url, notice: 'Machine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine
      @machine = Machine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_params
      params.require(:machine).permit(:delivery_category,:avatar1_edit,:avatar2_edit,:avatar3_edit,:avatar4_edit,:store_name,:user_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :dimension, :weight, :made_by_country, :made_with, :description, :brand, :category, :modal_number, :specification, :color)
    end

    def layout_per_action
      if action_name == "index" or "product_machines" 
           "application"
      else
        "backend"
      end
    end
end
