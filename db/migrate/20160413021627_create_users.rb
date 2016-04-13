class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.string :has_store
      t.string :company_name
      t.integer :user_type_id

      t.timestamps null: false
    end
  end
end
