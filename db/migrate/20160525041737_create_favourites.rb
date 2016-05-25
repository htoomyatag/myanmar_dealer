class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.string :item
      t.integer :user_id
      t.string :item_code

      t.timestamps null: false
    end
  end
end
