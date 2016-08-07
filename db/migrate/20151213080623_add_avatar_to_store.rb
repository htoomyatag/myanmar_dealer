class AddAvatarToStore < ActiveRecord::Migration

  def change
   	 add_column :stores, :avatar, :string
   	 add_column :stores, :ads_one, :string
   	 add_column :stores, :ads_two, :string
  end


end
