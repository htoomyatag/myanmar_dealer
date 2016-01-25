class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :weight
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :color
      t.string :brand
      t.string :category

      t.timestamps null: false
    end
  end
end
