class AddImageEditFieldToFashtionclothing < ActiveRecord::Migration
  def change
  	 add_column :fashion_clothings, :avatar1_edit, :text
  	 add_column :fashion_clothings, :avatar2_edit, :text
  	 add_column :fashion_clothings, :avatar3_edit, :text
  end
end
