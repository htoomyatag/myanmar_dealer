class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :charges
      t.string :service_category
      t.text :description
      t.integer :user_id
      t.string :store_name

      t.timestamps null: false
    end
  end
end
