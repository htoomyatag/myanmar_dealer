class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :seller_id
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone
      t.string :customer_city
      t.string :customer_township
      t.text :customer_address


      t.timestamps null: false
    end
  end
end
