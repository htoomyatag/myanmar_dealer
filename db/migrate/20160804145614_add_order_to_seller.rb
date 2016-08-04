class AddOrderToSeller < ActiveRecord::Migration
  def change
  	 add_column :orders, :sellers, :text, array:true, default: []
  	 add_column :orders, :seller_id, :string
  end
end
