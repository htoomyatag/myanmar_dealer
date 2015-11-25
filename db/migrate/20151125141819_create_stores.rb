class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :contact_number
      t.string :contact_address
      t.string :owner

      t.timestamps null: false
    end
  end
end
