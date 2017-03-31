class CreateCompanyeets < ActiveRecord::Migration
  def change
    create_table :companyeets do |t|
      t.text     :title
      t.integer  :company_id
      t.date  :period
      t.integer  :likes_count
      t.timestamps
    end
  end
end
