class Food < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :island
  belongs_to :opening_hour

  with_options presence: true do
    validates :image
    validates :store_name
    validates :address
    validates :tagline
    validates :details
  end  

  with_options numericality: { other_than: 1, message: "を選択してください" } do
    validates :island_id
    validates :genre_id
    validates :opening_hour_id
  end


end


  