class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :company_id
      t.integer :companyeet_id
      t.timestamps
    end
  end
end
