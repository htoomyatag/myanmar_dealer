class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :message
      t.string :rate_star
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
