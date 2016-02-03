class AddAvatarToBathsupplies < ActiveRecord::Migration
def up
    add_attachment :bath_supplies, :avatar1
    add_attachment :bath_supplies, :avatar2
    add_attachment :bath_supplies, :avatar3
    add_attachment :bath_supplies, :avatar4
    add_attachment :bath_supplies, :avatar5
  end

  def down
    remove_attachment :bath_supplies, :avatar1
    remove_attachment :bath_supplies, :avatar2
    remove_attachment :bath_supplies, :avatar3
    remove_attachment :bath_supplies, :avatar4
    remove_attachment :bath_supplies, :avatar5
  end
end
