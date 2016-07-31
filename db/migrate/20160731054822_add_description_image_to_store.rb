class AddDescriptionImageToStore < ActiveRecord::Migration
  

  def change
  	 add_column :stores, :description_image1, :string
  	 add_column :stores, :description_image2, :string
  	 add_column :stores, :description_image3, :string
  	 add_column :stores, :description_image4, :string
  end

end
