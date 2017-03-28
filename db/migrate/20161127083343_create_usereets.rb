class CreateUsereets < ActiveRecord::Migration
  def change
    create_table :usereets do |t|
      t.text     :title
      t.integer  :user_id
      t.timestamps
    end
  end
end
