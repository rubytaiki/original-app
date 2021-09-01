FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end

    nickname { Faker::Name.initials }
    email { Faker::Internet.free_email }
    password = Faker::Internet.password(min_length: 7, max_length: 20)
    password { password }
    password_confirmation { password }
    first_name_kana { person.first.katakana }
    last_name_kana { person.last.katakana }
    island_id { 2 }
  end
end
