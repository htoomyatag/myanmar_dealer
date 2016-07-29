class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :admin_approved, :string
  end
end
