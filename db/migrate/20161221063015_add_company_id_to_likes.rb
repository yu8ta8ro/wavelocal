class AddCompanyIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :company_id, :integer
  end
end
