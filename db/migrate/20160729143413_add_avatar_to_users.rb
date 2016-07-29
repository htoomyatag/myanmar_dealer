class AddAvatarToUsers < ActiveRecord::Migration
def up
    add_attachment :users, :personal_nrc_front
    add_attachment :users, :personal_nrc_back

    add_attachment :users, :retail_nrc_front
    add_attachment :users, :retail_nrc_back
    add_attachment :users, :shop_licensce

    add_attachment :users, :staff_nrc_front
    add_attachment :users, :staff_nrc_back
    add_attachment :users, :company_licensce
  end

  def down

    remove_attachment :users, :personal_nrc_front
    remove_attachment :users, :personal_nrc_back

    remove_attachment :users, :retail_nrc_front
    remove_attachment :users, :retail_nrc_back
    remove_attachment :users, :shop_licensce

    remove_attachment :users, :staff_nrc_front
    remove_attachment :users, :staff_nrc_back
    remove_attachment :users, :company_licensce
  end

end
