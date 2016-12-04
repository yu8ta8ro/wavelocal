class Usereet < ActiveRecord::Base
  belongs_to :user

  has_attached_file :pic,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :pic,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
end
