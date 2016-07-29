class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :admin_approved, :string

  	 add_column :users, :personal_nrc_number, :string
     add_column :users, :personal_name, :string
     add_column :users, :personal_address, :string

     add_column :users, :retail_nrc_number, :string
     add_column :users, :retail_name, :string
     add_column :users, :retail_address, :string
     add_column :users, :shop_name, :string
     

     add_column :users, :staff_name, :string
     add_column :users, :staff_nrc_number, :string
     add_column :users, :staff_address, :string

  end
end
