class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  layout :layout_per_action
  # GET /line_items
  # GET /line_items.json
  def index
    
      if params[:cart_id]
         @line_items = LineItem.where("cart_id = ? ", params[:cart_id]).where(:seller_id => current_seller.id)
      end
   
        @raw_store_id = Store.where(:seller_id => current_seller.id).pluck(:id)
     @store_id = @raw_store_id.to_s.gsub("[", "").gsub("]", "")
  end


  def my_items
    
      if params[:cart_id]
         @line_items = LineItem.where("cart_id = ? ", params[:cart_id])
      end
   
     
  end





  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def referer
    @env['HTTP_REFERER'] || '/'
  end

  def create
      @cart = current_cart
     
      product = Product.where("mmdealer_code = ?", params[:mmdealer_code]).ids
      @product_id = product.to_s.gsub("[","")
     
      seller = Seller.find(params[:seller_id])
      @line_item = @cart.add_item(@product_id,seller.id)
      respond_to do |format|
            if @line_item.save
              format.html { redirect_to request.referer }
              format.xml { render :xml => @line_item, :status => :created, :location => @line_item }
            else
              format.html { render :action => "new" }
              format.xml { render :xml => @line_item.errors, :status => :unprocessable_entity }
            end
        end
   end


  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to check_out_path, notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:product_id, :cart_id, :seller_id)
    end

    def layout_per_action
      if action_name == "index"
           "backend"
      elsif action_name == "my_items"
           "application"
      else
           "application"
      end
    end
end
