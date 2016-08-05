class AddSellerNameToProducts < ActiveRecord::Migration
  def change
  	  	 add_column :products, :seller_name, :string
  end
end
