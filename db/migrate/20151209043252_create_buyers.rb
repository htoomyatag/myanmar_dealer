class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
