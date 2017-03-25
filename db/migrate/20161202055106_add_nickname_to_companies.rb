class AddNicknameToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :nickname, :string
    add_column :companies, :lastname, :string
    add_column :companies, :firstname, :string
    add_column :companies, :address, :string
  end
end
