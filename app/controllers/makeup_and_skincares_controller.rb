class MakeupAndSkincaresController < ApplicationController
  before_action :set_makeup_and_skincare, only: [:show, :edit, :update, :destroy]

  # GET /makeup_and_skincares
  # GET /makeup_and_skincares.json
  def index
    @makeup_and_skincares = MakeupAndSkincare.all
  end

  # GET /makeup_and_skincares/1
  # GET /makeup_and_skincares/1.json
  def show
  end

  # GET /makeup_and_skincares/new
  def new
    @makeup_and_skincare = MakeupAndSkincare.new
  end

  # GET /makeup_and_skincares/1/edit
  def edit
  end

  # POST /makeup_and_skincares
  # POST /makeup_and_skincares.json
  def create
    @makeup_and_skincare = MakeupAndSkincare.new(makeup_and_skincare_params)

    respond_to do |format|
      if @makeup_and_skincare.save
        format.html { redirect_to @makeup_and_skincare, notice: 'Makeup and skincare was successfully created.' }
        format.json { render :show, status: :created, location: @makeup_and_skincare }
      else
        format.html { render :new }
        format.json { render json: @makeup_and_skincare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makeup_and_skincares/1
  # PATCH/PUT /makeup_and_skincares/1.json
  def update
    respond_to do |format|
      if @makeup_and_skincare.update(makeup_and_skincare_params)
        format.html { redirect_to @makeup_and_skincare, notice: 'Makeup and skincare was successfully updated.' }
        format.json { render :show, status: :ok, location: @makeup_and_skincare }
      else
        format.html { render :edit }
        format.json { render json: @makeup_and_skincare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makeup_and_skincares/1
  # DELETE /makeup_and_skincares/1.json
  def destroy
    @makeup_and_skincare.destroy
    respond_to do |format|
      format.html { redirect_to makeup_and_skincares_url, notice: 'Makeup and skincare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makeup_and_skincare
      @makeup_and_skincare = MakeupAndSkincare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makeup_and_skincare_params
      params.require(:makeup_and_skincare).permit(:title, :category, :certification, :ingredient, :usage, :made_by_country, :description, :brand, :color, :effect)
    end
end
