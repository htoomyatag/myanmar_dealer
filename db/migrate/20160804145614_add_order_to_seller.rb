class AddOrderToSeller < ActiveRecord::Migration
  def change
  	 add_column :orders, :sellers, :text, array:true, default: []
  end
end
