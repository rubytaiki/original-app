require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '#create' do
    context 'ユーザー登録できるとき' do
      it 'nicknameとemail,password,first_name_kana,last_name_kana,island_idが存在すれば登録できること' do
        expect(@user).to be_valid
      end

      it 'passwordが６文字以上かつ、英数字両方含んでいれば登録できること' do
        @user.password = '12345w'
        @user.password_confirmation = '12345w'
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録できないとき' do
      it 'nickname:必須' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームを入力してください')
      end

      it 'email:必須' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールを入力してください')
      end

      it 'password:必須' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードを入力してください')
      end

      it 'first_name_kana:必須' do
        @user.first_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('名前を入力してください')
      end

      it 'last_name_kana:必須' do
        @user.last_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('名字を入力してください')
      end

      it 'island_id:必須' do
        @user.island_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include('お住まいの島を入力してください')
      end

      it 'first_name_kanaが全角カタカナでなければ登録できないこと' do
        @user.first_name_kana = 'あいうえお'
        @user.valid?
        expect(@user.errors.full_messages).to include('名前は不正な値です')
      end

      it 'last_name_kanaが全角カタカナでなければ登録できないこと' do
        @user.last_name_kana = 'かきくけこ'
        @user.valid?
        expect(@user.errors.full_messages).to include('名字は不正な値です')
      end

      it 'passwordが５文字以下で登録できない' do
        @user.password = '123qw'
        @user.password_confirmation = '123qw'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'passwordが英語のみでは登録できない' do
        @user.password = 'qwerty'
        @user.password_confirmation = 'qwerty'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'passwordが数字のみでは登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'passwordが全角では登録できない' do
        @user.password = '１１１ｗｒt'
        @user.password_confirmation = '１１１ｗｒt'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'passwordとpassword_confirmationが一致しないと登録できない' do
        @user.password = '12345'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it '＠がないと登録できない' do
        @user.email = 'hahagmail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
    end
  end
end
