class AddAvatarsToStore < ActiveRecord::Migration
  def up
    add_attachment :stores, :ads_one
    add_attachment :stores, :ads_two
  end

  def down
    remove_attachment :stores, :ads_one
    remove_attachment :stores, :ads_two
  end
end
