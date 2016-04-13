class CreateBuyerReports < ActiveRecord::Migration
  def change
    create_table :buyer_reports do |t|
      t.string :title
      t.string :purchase_date
      t.string :description
      t.string :user_id

      t.timestamps null: false
    end
  end
end
