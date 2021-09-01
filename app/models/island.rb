class Island < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '対馬' },
    { id: 3, name: '壱岐' }
  ]

  include ActiveHash::Associations
  has_many :users
  has_many :foods
  has_many :hotels
end
