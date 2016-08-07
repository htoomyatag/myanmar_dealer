class AddAvatarToUsers < ActiveRecord::Migration
def change

    add_column :users, :personal_nrc_front, :text
    add_column :users, :personal_nrc_back, :text

    add_column :users, :retail_nrc_front, :text
    add_column :users, :retail_nrc_back, :text
    add_column :users, :shop_licensce, :text

    add_column :users, :staff_nrc_front, :text
    add_column :users, :staff_nrc_back, :text
    add_column :users, :company_licensce, :text
  end


end
