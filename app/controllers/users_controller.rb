class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json




  def index
    @users = User.all
  end


  def seller_sign_in

      @my_ip = request.remote_ip

      directory = "/#{Rails.root}/app/assets/"
      File.open(File.join(directory, 'file.txt'), 'w') do |f|
          f.puts @my_ip
      end


  end


  def approve_seller
    respond_to do |format|
      @user = User.find(params[:id])
      if @user.update(:admin_approved => "t")
        format.html { redirect_to admin_manage_seller_path }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def unapprove_seller
    respond_to do |format|
      @user = User.find(params[:id])
      if @user.update(:admin_approved => "f")
        format.html { redirect_to admin_manage_seller_path }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to request.env['HTTP_REFERER'], notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:personal_nrc_front,:personal_nrc_back,:retail_nrc_front,:retail_nrc_back,:shop_licensce,:staff_nrc_front,:staff_nrc_back,:company_licensce,:personal_nrc_number,:personal_name,:personal_address,:retail_nrc_number,:retail_name,:retail_address,:staff_name,:staff_nrc_number,:staff_address,:shop_name, :admin_approved, :store_id, :name, :phone, :address, :has_store, :company_name, :user_type_id, :authentication_token)
    end
end
