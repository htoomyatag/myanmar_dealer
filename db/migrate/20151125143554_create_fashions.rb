class CreateFashions < ActiveRecord::Migration
  def change
    create_table :fashions do |t|
      t.string :product_name
      t.string :available_size
      t.string :available_color
      t.integer :shop_id
      t.string :shop_name

      t.timestamps null: false
    end
  end
end
