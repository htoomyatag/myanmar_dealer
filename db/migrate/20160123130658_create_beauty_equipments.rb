class CreateBeautyEquipments < ActiveRecord::Migration
  def change
    create_table :beauty_equipments do |t|
      t.string :title
      t.string :category
      t.string :brand
      t.string :made_by_country
      t.text :description
      t.string :feature
      t.string :modal_number
      t.string :color
      t.integer :price
           t.integer :seller_id
                 t.string :store_name

      t.timestamps null: false
    end
  end
end
