class Food < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :island
  belongs_to :opening_hour

  with_options presence: true do
    validates :image, :store_name, :address, :tagline, :details
  end
  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :island_id, :genre_id, :opening_hour_id
  end
end
