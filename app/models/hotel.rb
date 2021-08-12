class Hotel < ApplicationRecord
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :island
  belongs_to :location
  belongs_to :price_range

  with_options presence: true do
    validates :image
    validates :hotel_name
    validates :address
    validates :tagline
    validates :details
  end  

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :island_id
    validates :location_id
    validates :price_range_id
  end

end
