class AddAvatarToStore < ActiveRecord::Migration

  def up
    add_attachment :stores, :avatar
  end

  def down
    remove_attachment :stores, :avatar
  end
end
