class AddAttachmentPicToUsereets < ActiveRecord::Migration
  def self.up
    change_table :usereets do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :usereets, :pic
  end
end
