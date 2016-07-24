class AddCategoryToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :product_category, :string
    add_column :products, :delivery_category, :string
  end
end
