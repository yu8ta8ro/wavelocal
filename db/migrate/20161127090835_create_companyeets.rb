class CreateCompanyeets < ActiveRecord::Migration
  def change
    create_table :companyeets do |t|
      t.text     :title
      t.integer  :company_id
      t.integer  :like_count
      t.timestamps
    end
  end
end
