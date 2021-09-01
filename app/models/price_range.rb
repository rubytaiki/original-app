class PriceRange < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'highクラス' },
    { id: 3, name: 'middleクラス' },
    { id: 4, name: 'lowクラス' }
  ]

  include ActiveHash::Associations
  has_many :hotels
end
