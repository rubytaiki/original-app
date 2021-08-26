FactoryBot.define do
  factory :hotel do
    hotel_name {'綺麗なお宿'}
    address {'壱岐市芦辺町'}
    tagline {'とても綺麗なホテル！'}
    details {'港まで送迎つき'}
    google_url {'https://goo.gl/maps/B1DaGnaBH9YrPm419'}
    island_id { 3 }
    location_id { 3 }
    price_range_id { 3 }
    association :user

    after(:build) do |hotel|
      hotel.image.attach(io: File.open('app/assets/images/hotel_image3.jpeg'), filename: 'hotel_image3.jpeg')
    end
  end
end