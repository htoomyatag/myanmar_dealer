class CreateTrainingAndSchools < ActiveRecord::Migration
  def change
    create_table :training_and_schools do |t|
      t.string :title
      t.string :fees
      t.string :period
      t.string :school
      t.text :description
      t.integer :user_id
      t.string :store_name

      t.timestamps null: false
    end
  end
end
