class Location < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'    },
    { id: 2, name: '港から近い'},
    { id: 3, name: '空港から近い'},
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :hotels
end