class OpeningHour < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ランチ営業あり'},
    { id: 3, name: '深夜営業あり' }
  ]

  include ActiveHash::Associations
  has_many :foods
end
