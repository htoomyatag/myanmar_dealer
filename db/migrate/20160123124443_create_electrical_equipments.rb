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
      t.integer :seller_id

      t.timestamps null: false
    end
  end
end
