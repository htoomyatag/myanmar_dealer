class HotItemsController < ApplicationController
  before_action :set_hot_item, only: [:show, :edit, :update, :destroy]

  # GET /hot_items
  # GET /hot_items.json
  def index
    @hot_items = HotItem.all
  end

  # GET /hot_items/1
  # GET /hot_items/1.json
  def show
  end

  # GET /hot_items/new
  def new
    @hot_item = HotItem.new
  end

  # GET /hot_items/1/edit
  def edit
  end

  # POST /hot_items
  # POST /hot_items.json
  def create
    @hot_item = HotItem.new(hot_item_params)

    respond_to do |format|
      if @hot_item.save
        format.html { redirect_to hot_items_path, notice: 'Hot item was successfully created.' }
        format.json { render :show, status: :created, location: @hot_item }
      else
        format.html { render :new }
        format.json { render json: @hot_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hot_items/1
  # PATCH/PUT /hot_items/1.json
  def update
    respond_to do |format|
      if @hot_item.update(hot_item_params)
        format.html { redirect_to hot_items_path, notice: 'Hot item was successfully updated.' }
        format.json { render :show, status: :ok, location: @hot_item }
      else
        format.html { render :edit }
        format.json { render json: @hot_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_items/1
  # DELETE /hot_items/1.json
  def destroy
    @hot_item.destroy
    respond_to do |format|
      format.html { redirect_to hot_items_url, notice: 'Hot item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hot_item
      @hot_item = HotItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hot_item_params
      params.require(:hot_item).permit(:image_data)
    end
end
