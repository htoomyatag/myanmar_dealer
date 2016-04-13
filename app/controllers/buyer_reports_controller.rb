class BuyerReportsController < ApplicationController
  before_action :set_buyer_report, only: [:show, :edit, :update, :destroy]

  # GET /buyer_reports
  # GET /buyer_reports.json
  def index
    @buyer_reports = BuyerReport.all
  end

  def my_report
     @buyer_reports = BuyerReport.where(:user_id => current_user.id)
  end

  # GET /buyer_reports/1
  # GET /buyer_reports/1.json
  def show
  end

  # GET /buyer_reports/new
  def new
    @buyer_report = BuyerReport.new
  end

  # GET /buyer_reports/1/edit
  def edit
  end

  # POST /buyer_reports
  # POST /buyer_reports.json
  def create
    @buyer_report = BuyerReport.new(buyer_report_params)

    respond_to do |format|
      if @buyer_report.save
        format.html { redirect_to my_report_path, notice: 'Buyer report was successfully created.' }
        format.json { render :show, status: :created, location: @buyer_report }
      else
        format.html { render :new }
        format.json { render json: @buyer_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyer_reports/1
  # PATCH/PUT /buyer_reports/1.json
  def update
    respond_to do |format|
      if @buyer_report.update(buyer_report_params)
        format.html { redirect_to @buyer_report, notice: 'Buyer report was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyer_report }
      else
        format.html { render :edit }
        format.json { render json: @buyer_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyer_reports/1
  # DELETE /buyer_reports/1.json
  def destroy
    @buyer_report.destroy
    respond_to do |format|
      format.html { redirect_to buyer_reports_url, notice: 'Buyer report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer_report
      @buyer_report = BuyerReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_report_params
      params.require(:buyer_report).permit(:title, :purchase_date, :description, :user_id, :avatar)
    end
end
