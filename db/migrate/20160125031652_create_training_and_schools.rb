class CreateTrainingAndSchools < ActiveRecord::Migration
  def change
    create_table :training_and_schools do |t|
      t.string :title
      t.string :fees
      t.string :period
      t.string :school
      t.text :description

      t.timestamps null: false
    end
  end
end
