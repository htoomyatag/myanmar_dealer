class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :weight
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :color
      t.integer :user_id
      t.string :store_name
      t.string :category
      t.text :avatar1_edit
      t.text :avatar2_edit
      t.text :avatar3_edit
      t.text :avatar4_edit

      t.timestamps null: false
    end
  end
end
