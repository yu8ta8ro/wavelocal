class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string   :name
      t.text     :info
      t.string   :url
      t.string   :address
      t.timestamps null: false
    end
  end
end
