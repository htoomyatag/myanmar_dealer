class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

       t.string :ends_in
       t.string :discount_percent
       t.string :price

      t.timestamps null: false
    end
  end
end
