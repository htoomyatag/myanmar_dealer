class TelephoneAccessoriesController < ApplicationController
  before_action :set_telephone_accessory, only: [:show, :edit, :update, :destroy]

  # GET /telephone_accessories
  # GET /telephone_accessories.json
  def index
    @telephone_accessories = TelephoneAccessory.all
  end

  # GET /telephone_accessories/1
  # GET /telephone_accessories/1.json
  def show
  end

  # GET /telephone_accessories/new
  def new
    @telephone_accessory = TelephoneAccessory.new
  end

  # GET /telephone_accessories/1/edit
  def edit
  end

  # POST /telephone_accessories
  # POST /telephone_accessories.json
  def create
    @telephone_accessory = TelephoneAccessory.new(telephone_accessory_params)

    respond_to do |format|
      if @telephone_accessory.save
        format.html { redirect_to @telephone_accessory, notice: 'Telephone accessory was successfully created.' }
        format.json { render :show, status: :created, location: @telephone_accessory }
      else
        format.html { render :new }
        format.json { render json: @telephone_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telephone_accessories/1
  # PATCH/PUT /telephone_accessories/1.json
  def update
    respond_to do |format|
      if @telephone_accessory.update(telephone_accessory_params)
        format.html { redirect_to @telephone_accessory, notice: 'Telephone accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @telephone_accessory }
      else
        format.html { render :edit }
        format.json { render json: @telephone_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telephone_accessories/1
  # DELETE /telephone_accessories/1.json
  def destroy
    @telephone_accessory.destroy
    respond_to do |format|
      format.html { redirect_to telephone_accessories_url, notice: 'Telephone accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telephone_accessory
      @telephone_accessory = TelephoneAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telephone_accessory_params
      params.require(:telephone_accessory).permit(:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :size, :weight, :made_by_country, :description, :brand, :category, :modal_number, :color, :feature, :operation_system)
    end
end
