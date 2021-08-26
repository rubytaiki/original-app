require 'rails_helper'

RSpec.describe Hotel, type: :model do
  before do
    @hotel = FactoryBot.build(:hotel)
  end

  describe '#create' do
    context '飲食店登録できる時' do
      it 'imageとhotel_name,address,tagline,details,island_id,location_id,price_range_idが存在すれば登録できること' do
        expect(@hotel).to be_valid
      end

      it 'Google_url空でも保存できる' do
        @hotel.google_url = ''
        expect(@hotel).to be_valid
      end
    end

    context 'ホテル登録できないとき' do
      it 'image:必須' do
        @hotel.image = nil
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("画像を入力してください")
      end

      it 'hotel_name:必須' do
        @hotel.hotel_name = ''
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("ホテル名を入力してください")
      end

      it 'address:必須' do
        @hotel.address = ''
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("アドレスを入力してください")
      end

      it 'tagline:必須' do
        @hotel.tagline = ''
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("キャッチコピーを入力してください")
      end

      it 'details:必須' do
        @hotel.details = ''
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("ホテルの詳細を入力してください")
      end

      it 'island_id:必須' do
        @hotel.island_id = 1
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("どちらかの島を選択してください")
      end

      it 'location_id:必須' do
        @hotel.location_id = 1
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("所在地を選択してください")
      end

      it 'price_range_id:必須' do
        @hotel.price_range_id = 1
        @hotel.valid?
        expect(@hotel.errors.full_messages).to include("価格帯を選択してください")
      end
    end
  end
end

