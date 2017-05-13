class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :uni_name, :string
    add_column :users, :grade, :integer
  end
end
