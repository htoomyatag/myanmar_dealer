class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :dimension
      t.string :weight
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :brand
      t.string :modal_number
      t.text :specification
      t.string :color
      t.integer :seller_id
      t.string :store_name
      t.string :category   

      t.timestamps null: false
    end
  end
end
