require 'rails_helper'

RSpec.describe Order, type: :model do
  describe '#create' do
    before do
      @order = FactoryBot.build(:order)
    end

    context '購入できる場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@order).to be_valid
      end

      it 'building_nameは空でも保存できること' do
        @order.building_name = ''
        expect(@order).to be_valid
      end
    end

    context '購入できない場合' do
      it 'last_name:必須' do
        @order.last_name = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('名字を入力してください')
      end

      it 'first_name:必須' do
        @order.first_name = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('名前を入力してください')
      end

      it 'first_name_kana:必須' do
        @order.first_name_kana = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('名前カナを入力してください')
      end

      it 'last_name_kana:必須' do
        @order.last_name_kana = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('名字カナを入力してください')
      end

      it 'first_nameが全角入力でなければ登録できないこと' do
        @order.first_name = 'ｱｲｳｴｵ'
        @order.valid?
        expect(@order.errors.full_messages).to include('名前は不正な値です')
      end

      it 'last_nameが全角入力でなければ登録できないこと' do
        @order.last_name = 'ｶｷｸｹｺ'
        @order.valid?
        expect(@order.errors.full_messages).to include('名字は不正な値です')
      end

      it 'first_name_kanaが全角カタカナでなければ登録できないこと' do
        @order.first_name_kana = 'あいうえお'
        @order.valid?
        expect(@order.errors.full_messages).to include('名前カナは不正な値です')
      end

      it 'last_name_kanaが全角カタカナでなければ登録できないこと' do
        @order.last_name_kana = 'かきくけこ'
        @order.valid?
        expect(@order.errors.full_messages).to include('名字カナは不正な値です')
      end

      it 'postal_codeが空だと保存できないこと' do
        @order.postal_code = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('郵便番号を入力してください')
      end
      it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
        @order.postal_code = '1234567'
        @order.valid?
        expect(@order.errors.full_messages).to include('郵便番号は不正な値です。ハイフン(-)を入れてください')
      end
      it 'prefecture_idを選択していないと保存できないこと' do
        @order.prefecture_id = 1
        @order.valid?
        expect(@order.errors.full_messages).to include('都道府県を選択してください')
      end
      it 'city_wordが空だと保存できないこと' do
        @order.city_word = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('市区町村を入力してください')
      end
      it 'house_numberが空だと保存できないこと' do
        @order.house_number = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('番地を入力してください')
      end
      it 'phone_numberが空だと保存できないこと' do
        @order.phone_number = ''
        @order.valid?
        expect(@order.errors.full_messages).to include('電話番号を入力してください')
      end
      it 'phone_numberが10桁、11桁以外は保存できないこと' do
        @order.phone_number = '111111111111'
        @order.valid?
        expect(@order.errors.full_messages).to include('電話番号は不正な値です')
      end
      it 'phone_numberが半角数字以外は保存できないこと' do
        @order.phone_number = '２２２２２２２２２２２'
        @order.valid?
        expect(@order.errors.full_messages).to include('電話番号は不正な値です')
      end

      it 'prefecture_id:必須' do
        @order.prefecture_id = 1
        @order.valid?
        expect(@order.errors.full_messages).to include('都道府県を選択してください')
      end

      it 'item_id:必須' do
        @order.item_id = 1
        @order.valid?
        expect(@order.errors.full_messages).to include('ふるさと納税 返礼品を選択してください')
      end

      it 'tokenが空だと保存できないこと' do
        @order.token = nil
        @order.valid?
        expect(@order.errors.full_messages).to include('正しいクレジットカード情報を入力してください')
      end
    end
  end
end
