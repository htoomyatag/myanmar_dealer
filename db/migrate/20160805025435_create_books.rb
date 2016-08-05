class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :number_of_paper
      t.string :price
      t.string :publisher
      t.string :book_description
      t.string :avatar_1
      t.string :avatar_2
      t.string :avatar_3
      t.string :avatar_4
      t.string :user_id
      t.string :store_name

      t.timestamps null: false
    end
  end
end
