class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'    },
    { id: 2, name: '居酒屋' },
    { id: 3, name: '和食'   },
    { id: 4, name: '洋食'   },
    { id: 5, name: '中華'   },
    { id: 6, name: 'ラーメン'},
    { id: 7, name: '寿司'   },
    { id: 8, name: '喫茶店' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :foods
end