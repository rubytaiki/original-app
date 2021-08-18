class Item < ActiveHash::Base
  self.data = [
    { id: 1, name: '--',},
    { id: 2, island: "壱岐", name: 'うに飯 200g', price: 20000, tagline: "本物のうにを知ってるかい", image: "unimeshi.jpeg"},
    { id: 3, island: "壱岐", name: '壱岐カレー 半年分', price: 5000, tagline: "カレーに魚介が入ってるだけと思ってるでしょ？", image: "ikicurry.jpeg"},
    { id: 4, island: "壱岐", name: '壱岐焼酎バラエティセット', price: 30000, tagline: "壱岐は麦焼酎は発祥の地", image: "shochu.jpeg"},
    { id: 5, island: "壱岐", name: '壱岐牛 2kg', price: 30000, tagline: "実は肉も絶品、脂が違う", image: "eat_image2.jpeg"},
    { id: 6, island: "対馬", name: 'かすまき(つぶ、こし、しろあん)', price: 10000, tagline: "対馬でしかお目にかかれない幻の和菓子", image: "kasumaki.jpeg"},
    { id: 7, island: "対馬", name: '蜂洞はちみつ 1L', price: 40000, tagline: "和蜂から取れたの最高級の栄養素含んだ蜂蜜", image: "hachidou.jpeg"},
    { id: 8, island: "対馬", name: 'どんこしいたけ 5kg' , price: 15000, tagline: "対馬の良質な原木で育った肉厚な食感！", image: "shiitake.jpeg"},
    { id: 9, island: "対馬", name: '黄金あなご 1kg' , price: 15000, tagline: "金にもひけを取らない黄金のあなご、ご存知だろうか？", image: "nianago.jpeg"}
  ]

  include ActiveHash::Associations
  has_many :orders
end