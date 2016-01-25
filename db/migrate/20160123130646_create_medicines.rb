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

      t.timestamps null: false
    end
  end
end
