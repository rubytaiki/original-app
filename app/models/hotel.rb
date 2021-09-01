class Hotel < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :island
  belongs_to :location
  belongs_to :price_range

  with_options presence: true do
    validates :image, :hotel_name, :address, :tagline, :details
  end
  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :island_id, :location_id, :price_range_id
  end
end
