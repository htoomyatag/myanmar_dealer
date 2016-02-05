class ElectricalEquipmentsController < ApplicationController
  before_action :set_electrical_equipment, only: [:show, :edit, :update, :destroy]

  # GET /electrical_equipments
  # GET /electrical_equipments.json
  def index
    @electrical_equipments = ElectricalEquipment.all
  end

  # GET /electrical_equipments/1
  # GET /electrical_equipments/1.json
  def show
  end

  # GET /electrical_equipments/new
  def new
    @electrical_equipment = ElectricalEquipment.new
  end

  # GET /electrical_equipments/1/edit
  def edit
  end

  # POST /electrical_equipments
  # POST /electrical_equipments.json
  def create
    @electrical_equipment = ElectricalEquipment.new(electrical_equipment_params)

    respond_to do |format|
      if @electrical_equipment.save
        format.html { redirect_to @electrical_equipment, notice: 'Electrical equipment was successfully created.' }
        format.json { render :show, status: :created, location: @electrical_equipment }
      else
        format.html { render :new }
        format.json { render json: @electrical_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electrical_equipments/1
  # PATCH/PUT /electrical_equipments/1.json
  def update
    respond_to do |format|
      if @electrical_equipment.update(electrical_equipment_params)
        format.html { redirect_to @electrical_equipment, notice: 'Electrical equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @electrical_equipment }
      else
        format.html { render :edit }
        format.json { render json: @electrical_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electrical_equipments/1
  # DELETE /electrical_equipments/1.json
  def destroy
    @electrical_equipment.destroy
    respond_to do |format|
      format.html { redirect_to electrical_equipments_url, notice: 'Electrical equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electrical_equipment
      @electrical_equipment = ElectricalEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electrical_equipment_params
      params.require(:electrical_equipment).permit(:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :price, :quantity, :size, :weight, :made_by_country, :description, :brand, :category, :modal_number, :color)
    end
end
