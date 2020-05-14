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

# searching DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|nul: false|
|image|text|nul: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user