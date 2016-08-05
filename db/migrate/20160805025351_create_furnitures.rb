class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :title
      t.string :weight
      t.string :dimension
      t.string :price
      t.string :made_by
      t.string :brand
      t.string :avatar_1
      t.string :avatar_2
      t.string :avatar_3
      t.string :avatar_4
      t.string :user_id
      t.string :store_name

      t.timestamps null: false
    end
  end
end
