class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :weight
      t.string :made_by_country
      t.string :made_with
      t.text :description
      t.string :color
      t.string :age_group
      t.integer :seller_id
            t.string :store_name

      t.timestamps null: false
    end
  end
end
