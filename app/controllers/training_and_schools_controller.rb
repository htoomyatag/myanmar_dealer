class TrainingAndSchoolsController < ApplicationController
  before_action :set_training_and_school, only: [:show, :edit, :update, :destroy]
   layout :layout_per_action
  # GET /training_and_schools
  # GET /training_and_schools.json
  def index
    @training_and_schools = TrainingAndSchool.all
  end

  def product_training_and_schools
     @training_and_schools = TrainingAndSchool.all
  end

  # GET /training_and_schools/1
  # GET /training_and_schools/1.json
  def show
  end

  # GET /training_and_schools/new
  def new
    @training_and_school = TrainingAndSchool.new
  end

  # GET /training_and_schools/1/edit
  def edit
  end

  # POST /training_and_schools
  # POST /training_and_schools.json
  def create
    @training_and_school = TrainingAndSchool.new(training_and_school_params)

    respond_to do |format|
      if @training_and_school.save
        format.html { redirect_to @training_and_school, notice: 'Training and school was successfully created.' }
        format.json { render :show, status: :created, location: @training_and_school }
      else
        format.html { render :new }
        format.json { render json: @training_and_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_and_schools/1
  # PATCH/PUT /training_and_schools/1.json
  def update
    respond_to do |format|
      if @training_and_school.update(training_and_school_params)
        format.html { redirect_to @training_and_school, notice: 'Training and school was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_and_school }
      else
        format.html { render :edit }
        format.json { render json: @training_and_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_and_schools/1
  # DELETE /training_and_schools/1.json
  def destroy
    @training_and_school.destroy
    respond_to do |format|
      format.html { redirect_to training_and_schools_url, notice: 'Training and school was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_and_school
      @training_and_school = TrainingAndSchool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_and_school_params
      params.require(:training_and_school).permit(:store_name,:seller_id,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:title, :fees, :period, :school, :description)
    end

    def layout_per_action
      if action_name == "index" or action_name ==  "product_training_and_schools" 
        "application"
      else
        "backend"
      end
    end
end
