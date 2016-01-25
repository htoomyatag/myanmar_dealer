class CreateFashionFootwears < ActiveRecord::Migration
  def change
    create_table :fashion_footwears do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :footwear_type
      t.string :size
      t.string :brand

      t.timestamps null: false
    end
  end
end
