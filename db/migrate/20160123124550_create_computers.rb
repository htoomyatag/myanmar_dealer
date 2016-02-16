class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :size
      t.string :weight
      t.string :Thickness
      t.string :made_by_country
      t.text :description
      t.string :brand
      t.string :category
      t.string :modal_number
      t.string :color
      t.string :feature
      t.string :operation_system
      t.integer :seller_id
            t.string :store_name

      t.timestamps null: false
    end
  end
end
