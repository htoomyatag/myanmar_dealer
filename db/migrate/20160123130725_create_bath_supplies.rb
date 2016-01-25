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

      t.timestamps null: false
    end
  end
end
