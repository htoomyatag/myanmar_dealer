class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :title
      t.string :category
      t.string :certification
      t.string :ingredient
      t.text :usage
      t.string :made_by_country
      t.text :description
      t.text :caution
      t.integer :price
      t.integer :user_id
      t.string :store_name
      t.integer  :quantity
      t.string :delivery_category
      
      t.text :avatar1_edit
      t.text :avatar2_edit
      t.text :avatar3_edit
      t.text :avatar4_edit
      t.string :avatar5_edit
      t.string :avatar6_edit
      t.string :avatar7_edit
      t.string :avatar8_edit

      t.timestamps null: false
    end
  end
end
