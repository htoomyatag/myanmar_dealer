class AddAvatarToBuyerReports < ActiveRecord::Migration
  def up
    add_attachment :buyer_reports, :avatar
  end

  def down
    remove_attachment :buyer_reports, :avatar
  end
end
