class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :company_name
      t.string :phone
      t.string :has_store

      t.timestamps null: false
    end
  end
end
