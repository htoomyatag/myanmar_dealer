class CreateBathSupplies < ActiveRecord::Migration
  def change
    create_table :bath_supplies do |t|
      t.string :title
      t.string :category
      t.text :ingredient
      t.text :usage
      t.string :made_by_country
      t.text :description
      t.string :brand
      t.string :effect
      t.string :certification
      t.string :age_group
      t.integer :price
      t.integer :user_id
      t.string :store_name
      t.integer :quantity
      t.text :avatar1_edit
      t.text :avatar2_edit
      t.text :avatar3_edit
      t.text :avatar4_edit
      t.string :delivery_category


      t.timestamps null: false
    end
  end
end
