# Name

Connecting with TECH::CAMP (CTC)

CTCはTECH::CAMP生を繋げるSNSアプリ。


# DEMO

現在DEMO動画を作成中。

# Features


なぜ多くのSNSアプリが存在する中で、新たにTECH :CAMP生専用のアプリを作ったのか？

TECH::CAMP内でのTwitter等のSNSアプリ使用率が低く、教室内で出会った人達と継続的に繋がれないのが残念に思った。
Twitterを使用しない人へ理由を聞いてみると主に以下の理由でTwitterを利用するのを躊躇っているのが分かった。
1. 何を投稿するべきか分からず、投稿しないと使う意味がないなと思ってしまう。
2. 誰をフォローしていいか分からない。(TECH::CAMP生を探せない)
3. 特に見たくないツイートが流れて来る事が多くメリットを感じられない

以下の3点の障害を取り除いたSNSを作成する事で、多くのTECH::CAMP生がSNSを利用し、仲間と繋がって行けるのではないかと思いCTCを作成した。

他のSNSと大きく違う点は次の3点だ。

1. メモ機能(利用者一人一人にメモが出来る)や、紹介機能を追加し、投稿機能よりもその人の人柄を判断でき、より繋がりを深く出来る様にした。
2. TECH::CAMP生専用のSNSにし、受講期やコース毎に、検索が出来る様にした。
3. TLを作成せず、直接ツイートを見たい人のページにいかないとツイートを見れない様にした。

# Usage

https://nameless-atoll-34353.herokuapp.com/

上記URLを開くと、ログイン画面が開くので下記の情報を入力し、ログインする。

* 本名: テストテスト
* メールアドレス: test@test.com
* パスワード: aaaaaaaa(aが8つ)

他の登録している受講生の一覧ページに移動し、それぞれのユーザーの詳細ページに飛ぶ事が出来る。

# Note

現在は作成中で、新規登録者の情報しかみる事ができません。

# Author

* 作成者 :岡本琉雅
* E-mail :ruka20020212@icloud.com


# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|Email|string|null: false|
|password|string|null: false|

### Association
- has_many :profiles,dependent :destroy
<!-- - has_many :tweets
- has_many :comments
- has_many :memoes -->

## profilesテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|image|string|
|term|integer|null: false|
|style|string|null: false|
|seat_number|integer|
|twitter|string|
|former_job|string|
|shout_message|text|
|user_id|references|null: false, foreign_key: true|
### Association
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
