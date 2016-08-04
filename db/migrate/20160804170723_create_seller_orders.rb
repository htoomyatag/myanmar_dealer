class CreateSellerOrders < ActiveRecord::Migration
  def change
    create_table :seller_orders do |t|
       
       t.string :customer_name
       t.string :seller_id 
       t.string :order_status
       t.string :buyer_id
       t.string :cart_id 
       t.string :customer_name 
       t.string :customer_email 
       t.string :customer_phone 
       t.string :customer_city 
       t.string :customer_township
       t.string :customer_address

       t.timestamps null: false
    end
  end
end
