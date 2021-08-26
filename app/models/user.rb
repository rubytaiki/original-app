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
    validates :nickname, :last_name_kana, :first_name_kana, :password, :password_confirmation
  end
  with_options allow_blank: true do
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :last_name_kana, :first_name_kana
    end
    with_options format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, length: { minimum: 6 } do
      validates :password, :password_confirmation
    end
  end
  
  validates :island_id, numericality: { other_than: 1, message: "を入力してください" }
end