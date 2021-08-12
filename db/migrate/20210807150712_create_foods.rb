class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string     :store_name,      null: false
      t.string     :address,         null: false
      t.string     :tagline,         null: false
      t.string     :google_url,      null: false
      t.text       :details,         null: false
      t.integer    :genre_id,        null: false
      t.integer    :island_id,       null: false
      t.integer    :opening_hour_id, null: false
      t.references :user,            null: false, foreign_key: true 
      t.timestamps
    end
  end
end