class CreateHomeAppliances < ActiveRecord::Migration
  def change
    create_table :home_appliances do |t|
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
      t.text :feature
      t.string :power
      t.string :voltage

      t.timestamps null: false
    end
  end
end
