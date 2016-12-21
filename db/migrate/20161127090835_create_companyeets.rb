class CreateCompanyeets < ActiveRecord::Migration
  def change
    create_table :companyeets do |t|
      t.text     :title
      t.integer  :company_id
      t.integer  :likes_count
      t.timestamps
    end
  end
end
