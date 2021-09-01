class Order < ApplicationRecord
  attr_accessor :token

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item
  belongs_to :prefecture

  with_options presence: true do
    validates :first_name, :last_name, :first_name_kana, :last_name_kana
  end
  with_options allow_blank: true do
    with_options format: { with: /\A[ぁ-んァ-ン一-龥々ー]+\z/ } do
      validates :first_name, :last_name
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :first_name_kana, :last_name_kana
    end
  end
  with_options presence: true do
    validates :token, :postal_code, :city_word, :house_number, :phone_number
  end
  with_options allow_blank: true do
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'は不正な値です。ハイフン(-)を入れてください' }
    validates :phone_number, format: { with: /\A\d{10,11}+$\z/ }
  end
  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :prefecture_id, :item_id
  end
end
