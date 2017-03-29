class Companyeet < ActiveRecord::Base
  belongs_to :company
  has_many :likes, dependent: :destroy

  has_attached_file :pic,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :pic,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
  validates :title, :pic, presence: true

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

end
