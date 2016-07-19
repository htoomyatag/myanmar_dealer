class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_address
      t.string :store_contact
      t.text :description
      t.text :term
      t.integer :user_id
      t.string :seller_name

      t.timestamps null: false
    end
  end
end
