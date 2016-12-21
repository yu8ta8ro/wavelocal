class CreateUsereets < ActiveRecord::Migration
  def change
    create_table :usereets do |t|
      t.text     :title
      t.integer  :user_id
      t.integer  :likes_count
      t.timestamps
    end
  end
end
