FactoryBot.define do
  factory :food do
    store_name { '美味しいお店' }
    address { '対馬市厳原町' }
    tagline { 'とっても美味しいお店！' }
    details { '特にお魚が美味しいお店' }
    google_url { 'https://goo.gl/maps/B1DaGnaBH9YrPm419' }
    island_id { 2 }
    genre_id { 2 }
    opening_hour_id { 2 }
    association :user

    after(:build) do |food|
      food.image.attach(io: File.open('app/assets/images/eat_image.jpeg'), filename: 'eat_image.jpeg')
    end
  end
end
