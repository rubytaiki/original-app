# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# アプリケーション名
日本遺産　壱岐対馬　情報発信サイト

## アプリケーションの概要

## URL

## テスト用アカウント

## 利用方法

## 目指した課題解決

## 洗い出した要件

## 実装画像　動画

##　実装　予定機能




# テーブル設計


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
has_many foods
has_many hotels
belongs_to island (activeHash)



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
belongs_to user   
belongs_to genre        (activeHash)
belongs_to island       (activeHash)
belongs_to opening_hour (activeHash)



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
belongs_to user
belongs_to island      (activeHash)
belongs_to location    (activeHash)
belongs_to price_range (activeHash)



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
belongs_to item       (activeHash)
belongs_to prefecture (activeHash)