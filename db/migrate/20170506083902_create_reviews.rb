class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string    :company
      t.string    :job
      t.string    :duration
      t.string    :frequency
      t.string    :payment
      t.string    :flexibility
      t.string    :sati_for_payment
      t.string    :potential
      t.string    :growth
      t.string    :contribution
      t.string    :jobhunting
      t.string    :nps
      t.text      :detail
      t.text      :skill
      t.text      :edu_system
      t.text      :merits
      t.integer   :corporation_id
      t.integer   :user_id
      t.timestamps null: false
    end
  end
end
