class CreateCompanyeets < ActiveRecord::Migration
  def change
    create_table :companyeets do |t|
      t.text     :title
      t.text     :explanation
      t.text     :pic
      t.integer  :integer
      t.integer  :like_count
      t.timestamps
    end
  end
end
