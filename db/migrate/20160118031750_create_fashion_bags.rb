class CreateFashionBags < ActiveRecord::Migration
  def change
    create_table :fashion_bags do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :bag_type
      t.string :size
      t.string :brand
      t.integer :user_id
      t.string :store_name
      t.string :color
      t.string :category
      t.text :avatar1_edit
      t.text :avatar2_edit
      t.text :avatar3_edit
      t.text :avatar4_edit
      t.timestamps null: false
    end
  end
end
