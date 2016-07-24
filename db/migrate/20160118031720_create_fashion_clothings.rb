class CreateFashionClothings < ActiveRecord::Migration
  def change
    create_table :fashion_clothings do |t|
      t.string :title
      t.integer :price
      t.integer :quantity
      t.string :size
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :gender
      t.string :brand
      t.integer :user_id
      t.string :color
      t.string :store_name
      t.string :category
      t.string :delivery_category


      t.timestamps null: false
    end
  end
end
