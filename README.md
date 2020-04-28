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


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|Email|string|null: false|
|password|string|null: false|

### Association
- has_many :profiles,dependent :destroy
- has_many :tweets
- has_many :comments
- has_many :memoes

## profilesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|
|term|string|null: false|
<!-- |style|string|null: false| -->
|seat-number|string|
|twitter|string|
|fermer-job|string|
|shout-message|string|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :has_many
- belongs_to :user

## memoesテーブル

|Column|Type|Options|
|------|----|-------|
|memo|string|null:false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :profile

## tweetesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|string|
|image|string|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to: user
- has_many: comments

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|string|null:false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to: user
- belongs_to: tweet
