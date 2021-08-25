### README

# アプリ名
## 「日本遺産壱岐対馬 情報発信サイト　島ちょうだい！」

# 概要
閲覧者（旅行先を選定したい人）</br>
『コロナ蔓延鈍化以降のマイクロツーリズム流行に向けた壱岐対馬情報発信サイト』</br>  
管理者（壱岐対馬の観光局で勤めている人）</br>
 『手軽に情報の更新管理』

# URL :page_with_curl:
http://35.74.120.34/

# テスト用アカウント :credit_card:
Basic認証   ユーザー名:admin       Password:2222
管理者      email:koko@gmail.com  Password:111111w
クレジットカード番号 4242424242424242
有効期限 現在より未来の日付
セキュリティコード 123 

# ペルソナ
### <閲覧者:woman :man:>
・(住まい)                  九州在住</br>
・(年齢)                    30〜50代</br>
・(持っている課題)
コロナが落ち着いてからの旅行先選定、人気の多いところには行きたくない</br>
・(離島に対してのイメージ)
離島への旅行って遠そう 何があるのか分からない
              
### <管理者　:older_woman: :older_man:>
・(住まい)          島の観光局職員</br>
・(年齢)            40代〜50代</br>
・(持っている課題)
距離的な問題か、観光客が少ないかつ、コロナ蔓延でより客足がより少ない</br>
現地の観光局等職員が高齢で気軽に情報を投稿更新できない


# 目指すもの :checkered_flag:
以上の２者の課題解決のため、

・情報管理のしやすさ</br>
・マイクロツーリズムに則った新しい観光需要の創出

といった観光情報発信Webサイトの作成を目指す。


# 工夫した点 :black_nib:
市公式の観光サイトではない、「離島旅行」という形で推すWebサイトという位置付けにした点。</br>
閲覧者が出来るだけサイト内に留まってもらえるように、動画や写真の挿入、クリックした時の要素にCSSjQueryで遊びを入れた点。</br>
離島がどのような場所か想像が出来るよう、島までのアクセスなどの、体験できる内容を写真動画を用いて訴求した点。


# ページ遷移図　
[![Image from Gyazo](https://i.gyazo.com/4940f0003f5c48b160c79cc01663d9ee.png)](https://gyazo.com/4940f0003f5c48b160c79cc01663d9ee)

# 実装画像動画 :movie_camera:
## トップページ
[![Image from Gyazo](https://i.gyazo.com/c8435aacf54794084cef31c988ef46ab.gif)](https://gyazo.com/c8435aacf54794084cef31c988ef46ab)  
#### Point
ヘッダー部左：アイコンには、ホバーで浮き上がる仕様</br>
ヘッダー部右：リンクリストは、ホバーで白下線が出てくる使用</br>
画面中央：jQueryプラグインのslickを使用し、画像のスライド形式で設置</br>

## 食べる　泊まる
[![Image from Gyazo](https://i.gyazo.com/bb62923d871d837da07b0ec662320604.gif)](https://gyazo.com/bb62923d871d837da07b0ec662320604)
#### Point
画面中段：検索機能 ヒット数のカウント表示</br>
画面下段：飲食店データの表示</br>
管理者によって入力されたデータがこちらに出力されるよう設定</br>

該当する条件にヒットしなかった場合、「検索ヒットしませんでした」の表示↓↓
[![Image from Gyazo](https://i.gyazo.com/630656685d6771a73ea3b9e25721eaf2.gif)](https://gyazo.com/630656685d6771a73ea3b9e25721eaf2)


## 対馬を知る　壱岐を知る
[![Image from Gyazo](https://i.gyazo.com/7ac9383bc87e41733a8c85fafd03626c.gif)](https://gyazo.com/7ac9383bc87e41733a8c85fafd03626c)
#### Point
画面中段：項目をクリックすると、下段の該当する画像のみ表示される</br>
jQueryプラグイン Muuri</br>

画像クリック時：画像大画面表示（個人的に撮った写真で、情景の説明書きあり）↓↓</br>
jQueryプラグイン fancybox</br>
[![Image from Gyazo](https://i.gyazo.com/d108104afdb9de0a52e8a05e742b77cd.jpg)](https://gyazo.com/d108104afdb9de0a52e8a05e742b77cd)

## アクセス
[![Image from Gyazo](https://i.gyazo.com/3e4e054cd947f1be29d7fe0aac3a1b64.gif)](https://gyazo.com/3e4e054cd947f1be29d7fe0aac3a1b64)
#### Point
様々なアクセス方法がある中、船での移動にフォーカス。</br>
画面中段：いくつかある港でも旅行に最適な港を絞ってGoogle Mapで移動時間を紹介</br>
画面下段：個人的に撮った動画 乗船時の雰囲気を紹介</br>

## ふるさと納税
商品一覧
[![Image from Gyazo](https://i.gyazo.com/d731751502a2d563c14bfe6a66efa702.jpg)](https://gyazo.com/d731751502a2d563c14bfe6a66efa702)
購入ページ
[![Image from Gyazo](https://i.gyazo.com/e1c2ee3afe06e08fedd8a2bf8c49fc53.gif)](https://gyazo.com/e1c2ee3afe06e08fedd8a2bf8c49fc53)

#### Point
商品データはActiveHashを利用して管理</br>
クレジット機能を用いて購入可能。</br>
お金の落ちるチャンネルを観光だけでなく、ふるさと納税という観点も増やしたいと考え実装追加</br>

## ログインページ　サインインページ
[![Image from Gyazo](https://i.gyazo.com/88efd3a9348e3f72e38fbc1d4f3ec14b.gif)](https://gyazo.com/88efd3a9348e3f72e38fbc1d4f3ec14b)
#### Point
トップページ画面最下部：「Are you a host?」をクリック後ログインページに飛ぶ</br>
ホストでなければ「To be a host, click here」でユーザー登録</br>

## 代表者トップページ
[![Image from Gyazo](https://i.gyazo.com/fed873534bb9f7d449859ba73af216bb.gif)](https://gyazo.com/fed873534bb9f7d449859ba73af216bb)
#### Point
トップ画面ヘッダー部右：ログインユーザー専用の項目が増える。自分のニックネームをクリックで投稿管理画面へ</br>
・ホテル飲食店の新規登録</br>
・既存ホテル飲食店データの編集削除</br>
これらのページにそれぞれ飛べる</br>

# 使用技術 :art:
Ruby/RubyonRails/JavaScript/jQuery/MySQL/SequelPro/</br>
AWS(EC2,S3)//Nginx/Unicorn/Github/Github Desktop/</br>
slick/fancybox/Muuri/</br>
Capistrano/devise/active_hash/mini_magick/image_processing/ransack/pry-rails/payjp

# 課題や今後実装したい機能 :eyes:
＜閲覧者面＞</br>
スマホで見れるようにレスポンシブ対応</br>
ヘッダー各要素のハンバーガーメニュー表示</br>
購入内容確認画面の設定</br>
アクセスページの要素にanimation(fadeupなど)付けて面白くする</br>

＜管理者面＞</br>
ホテル飲食店の画像投稿前にプレビューをつける</br>



# テーブル設計
![app.dioをご確認ください](app/assets/images/originalapp.png)

## Users テーブル

|Column            |Type   |Options                  |
|------------------|-------|-------------------------|
|nickname          |string |null: false              |
|email             |string |null: false              |
|encrypted_password|string |null: false              |
|first_name_kana   |string |null: false              |
|last_name_kana    |string |null: false              |
|island_id         |integer|null: false              |

### Association
has_many foods</br>
has_many hotels</br>
belongs_to island (activeHash)</br>
  

## Foods テーブル

|Column                 |Type       |Options                        |
|-----------------------|-----------|-------------------------------|
|store_name             |string     |null: false                    |
|address                |string     |null: false                    |
|tagline                |string     |null: false                    |
|google_url             |string     |null: false                    |
|details                |string     |null: false                    |
|genre_id               |integer    |null: false                    |
|island_id              |integer    |null: false                    |
|opening_hour_id        |integer    |null: false                    |
|user                   |references |null: false, foreign_key: true |

### Association
belongs_to user</br>
belongs_to genre        (activeHash)</br>
belongs_to island       (activeHash)</br>
belongs_to opening_hour (activeHash)</br>  



## Hotels テーブル

|Column                 |Type       |Options                        |
|-----------------------|-----------|-------------------------------|
|hotel_name             |string     |null: false                    |
|address                |string     |null: false                    |
|tagline                |string     |null: false                    |
|google_url             |string     |null: false                    |
|details                |string     |null: false                    |
|location_id            |integer    |null: false                    |
|island_id              |integer    |null: false                    |
|price_range_id         |integer    |null: false                    |
|user                   |references |null: false, foreign_key: true |

### Association
belongs_to user</br>
belongs_to island      (activeHash)</br>
belongs_to location    (activeHash)</br>
belongs_to price_range (activeHash)</br>



## Orders テーブル

|Column           |Type       |Options                        | 
|-----------------|-----------|-------------------------------|
|first_name       |string     |null: false                    |
|last_name        |string     |null: false                    |
|first_name_kana  |string     |null: false                    |
|last_name_kana   |string     |null: false                    |
|item_id          |integer    |null: false                    |
|postal_code      |string     |null: false                    |
|prefecture_id    |integer    |null: false                    |
|city_word        |string     |null: false                    |
|house_number     |string     |null: false                    |
|building_name    |string     |                               |
|phone_number     |string     |null: false                    |

### Association
belongs_to item       (activeHash)</br>
belongs_to prefecture (activeHash)</br>