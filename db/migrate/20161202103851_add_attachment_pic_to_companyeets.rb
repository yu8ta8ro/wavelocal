class AddAttachmentPicToCompanyeets < ActiveRecord::Migration
  def self.up
    change_table :companyeets do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :companyeets, :pic
  end
end
