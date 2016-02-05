class BeautyEquipmentsController < ApplicationController
  before_action :set_beauty_equipment, only: [:show, :edit, :update, :destroy]

  # GET /beauty_equipments
  # GET /beauty_equipments.json
  def index
    @beauty_equipments = BeautyEquipment.all
  end

  # GET /beauty_equipments/1
  # GET /beauty_equipments/1.json
  def show
  end

  # GET /beauty_equipments/new
  def new
    @beauty_equipment = BeautyEquipment.new
  end

  # GET /beauty_equipments/1/edit
  def edit
  end

  # POST /beauty_equipments
  # POST /beauty_equipments.json
  def create
    @beauty_equipment = BeautyEquipment.new(beauty_equipment_params)

    respond_to do |format|
      if @beauty_equipment.save
        format.html { redirect_to @beauty_equipment, notice: 'Beauty equipment was successfully created.' }
        format.json { render :show, status: :created, location: @beauty_equipment }
      else
        format.html { render :new }
        format.json { render json: @beauty_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beauty_equipments/1
  # PATCH/PUT /beauty_equipments/1.json
  def update
    respond_to do |format|
      if @beauty_equipment.update(beauty_equipment_params)
        format.html { redirect_to @beauty_equipment, notice: 'Beauty equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @beauty_equipment }
      else
        format.html { render :edit }
        format.json { render json: @beauty_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beauty_equipments/1
  # DELETE /beauty_equipments/1.json
  def destroy
    @beauty_equipment.destroy
    respond_to do |format|
      format.html { redirect_to beauty_equipments_url, notice: 'Beauty equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beauty_equipment
      @beauty_equipment = BeautyEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beauty_equipment_params
      params.require(:beauty_equipment).permit(:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :category, :brand, :made_by_country, :description, :feature, :modal_number, :color)
    end
end
