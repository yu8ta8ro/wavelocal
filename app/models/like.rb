class Like < ActiveRecord::Base
  belongs_to :companyeet, counter_cache: :likes_count
  belongs_to :company
end
