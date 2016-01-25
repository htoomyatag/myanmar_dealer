class CreateFashionHats < ActiveRecord::Migration
  def change
    create_table :fashion_hats do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :brand
      t.string :hat_type

      t.timestamps null: false
    end
  end
end
