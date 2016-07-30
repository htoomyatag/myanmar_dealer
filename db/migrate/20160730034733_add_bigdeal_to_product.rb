class AddBigdealToProduct < ActiveRecord::Migration
  def change
  	 add_column :products, :big_deal, :string
  end
end
