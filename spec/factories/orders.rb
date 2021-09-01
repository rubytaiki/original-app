FactoryBot.define do
  factory :order do
    transient do
      person { Gimei.unique.name }
      address { Gimei.address }
    end
    item_id { 2 }
    first_name { person.first.kanji }
    last_name { person.last.kanji }
    first_name_kana { person.first.katakana }
    last_name_kana { person.last.katakana }
    postal_code { '123-4567' }
    prefecture_id { 2 }
    city_word { address.city.kanji }
    house_number { '1-1' }
    building_name { '東京ハイツ' }
    phone_number { '08055556789' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
