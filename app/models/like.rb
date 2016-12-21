class Like < ActiveRecord::Base
  belongs_to :usereet, counter_cache: :likes_count
  belongs_to :user
end
