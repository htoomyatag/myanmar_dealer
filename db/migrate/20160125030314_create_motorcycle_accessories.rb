class CreateMotorcycleAccessories < ActiveRecord::Migration
  def change
    create_table :motorcycle_accessories do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :size
      t.string :weight
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :brand
      t.text :specification
      t.string :modal_number
      t.string :color
      t.string :feature
      t.integer :user_id
      t.string :store_name
      t.string :category

      t.timestamps null: false
    end
  end
end
