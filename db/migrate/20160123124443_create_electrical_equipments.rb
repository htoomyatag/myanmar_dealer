class CreateElectricalEquipments < ActiveRecord::Migration
  def change
    create_table :electrical_equipments do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :size
      t.string :weight
      t.string :made_by_country
      t.text :description
      t.string :brand
      t.string :category
      t.string :modal_number
      t.string :color
      t.integer :user_id
      t.string :store_name
      t.text :avatar1_edit
      t.text :avatar2_edit
      t.text :avatar3_edit
      t.text :avatar4_edit
      t.string :delivery_category

      t.timestamps null: false
    end
  end
end
