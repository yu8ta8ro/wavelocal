class CreateUsereets < ActiveRecord::Migration
  def change
    create_table :usereets do |t|
      t.text     :title
      t.text     :explanation
      t.text     :pic
      t.integer  :integer
      t.integer  :like_count
      t.timestamps
    end
  end
end
