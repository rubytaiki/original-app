class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :foods
  has_many :hotels
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :island

  with_options presence: true do
    validates :nickname
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :last_name_kana
    validates :first_name_kana
    end
  end

  validates :island_id, numericality: { other_than: 1, message: "can't be blank" }
       
end
