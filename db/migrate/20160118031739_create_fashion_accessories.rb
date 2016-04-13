class CreateFashionAccessories < ActiveRecord::Migration
  def change
    create_table :fashion_accessories do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :brand
      t.integer :user_id
      t.string :store_name
      t.string :category

      t.timestamps null: false
    end
  end
end
