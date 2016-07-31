class CreateHotItems < ActiveRecord::Migration
  def change
    create_table :hot_items do |t|
      t.string :image_data

      t.timestamps null: false
    end
  end
end
