class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :color
      t.string :size
      t.string :weight
      t.integer :seller_id

      t.timestamps null: false
    end
  end
end
