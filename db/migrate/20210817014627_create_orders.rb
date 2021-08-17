class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string       :first_name,         null: false
      t.string       :last_name,          null: false
      t.string       :first_name_kana,    null: false
      t.string       :last_name_kana,     null: false
      t.integer      :item_id,            null: false
      t.string       :postal_code,        null: false
      t.integer      :prefecture_id,      null: false
      t.string       :city_word,          null: false
      t.string       :house_number,       null: false
      t.string       :building_name
      t.string       :phone_number,       null: false
      t.timestamps
    end
  end
end
