require 'rails_helper'

RSpec.describe Food, type: :model do
  before do
    @food = FactoryBot.build(:food)
  end

  describe '#create' do
    context '飲食店登録できる時' do
      it 'imageとstore_name,address,tagline,details,island_id,genre_id,opening_hour_idが存在すれば登録できること' do
        expect(@food).to be_valid
      end

      it 'Google_url空でも保存できる' do
        @food.google_url = ''
        expect(@food).to be_valid
      end
    end

    context '飲食店登録できないとき' do
      it 'image:必須' do
        @food.image = nil
        @food.valid?
        expect(@food.errors.full_messages).to include("画像を入力してください")
      end

      it 'store_name:必須' do
        @food.store_name = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("飲食店名を入力してください")
      end

      it 'address:必須' do
        @food.address = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("アドレスを入力してください")
      end

      it 'tagline:必須' do
        @food.tagline = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("キャッチコピーを入力してください")
      end

      it 'details:必須' do
        @food.details = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("飲食店の詳細を入力してください")
      end

      it 'island_id:必須' do
        @food.island_id = 1
        @food.valid?
        expect(@food.errors.full_messages).to include("どちらかの島を選択してください")
      end

      it 'genre_id:必須' do
        @food.genre_id = 1
        @food.valid?
        expect(@food.errors.full_messages).to include("ジャンルを選択してください")
      end

      it 'opening_hour_id:必須' do
        @food.opening_hour_id = 1
        @food.valid?
        expect(@food.errors.full_messages).to include("営業時間を選択してください")
      end
    end
  end
end

