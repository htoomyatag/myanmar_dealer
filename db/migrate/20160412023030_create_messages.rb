class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :conversation, index: true
      t.references :buyer, index: true

      t.timestamps
    end
  end
end



