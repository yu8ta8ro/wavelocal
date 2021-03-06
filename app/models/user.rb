class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :usereets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # has_attached_file :avatar,
 #                      styles:  { medium: "300x300#", thumb: "100x100#" }
 #  validates_attachment_content_type :avatar,
 #                                      content_type: ["image/jpg","image/jpeg","image/png"]
  validates :firstname, :lastname, :email, :nickname, presence: true
end
