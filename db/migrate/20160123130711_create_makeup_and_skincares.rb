class CreateMakeupAndSkincares < ActiveRecord::Migration
  def change
    create_table :makeup_and_skincares do |t|
      t.string :title
      t.string :category
      t.string :certification
      t.text :ingredient
      t.text :usage
      t.string :made_by_country
      t.text :description
      t.string :brand
      t.string :color
      t.string :effect
      t.integer :price
      t.integer :seller_id

      t.timestamps null: false
    end
  end
end
