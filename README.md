# テーブル設計


## users テーブル

| Column             | Type       | Options                  |
| ------             | ------     | --------                 |
| nickname           | string     | null: false              |
| email              | string     | null: false, unique: true|
| encrypted_password | string     | null: false              |
| keep_pet           | string     | null: false              |
| number_of_pets     | string     | null: false              |


### Association

- has_many   :likes
- belongs_to :pet
- has_many   :cats
- has_many   :dogs
- has_many   :messages


## pets テーブル

| Column              | Type       | Options          |
| ------              | ------     | --------         |
| user                | references | foreign_key: true|


### Association

- belongs_to :user


##  dogsテーブル

| Column              | Type       | Options           |
| ------              | ---------- | --------          |
| pet_name            | string     | null: false       |
| kind                | string     | null: false       |
| personality_id      | integer    | null: false       |
| age_id              | integer    | null: false       |
| sex_id              | integer    | null: false       |
| weight              | string     | null: false       |
| user                | references | foreign_key: true |


### Association

- belongs_to :user


## cats テーブル

| Column              | Type       | Options           |
| ------              | ---------- | --------          |
| pet_name            | string     | null: false       |
| kind                | string     | null: false       |
| personality_id      | integer    | null: false       |
| age_id              | integer    | null: false       |
| sex_id              | integer    | null: false       |
| weight              | string     | null: false       |
| user                | references | foreign_key: true |



### Association

- belongs_to :user


##  likesテーブル

| Column          | Type       | Options           |
| ------          | ---------- | --------          |
| dogs            | references | foreign_key: true |
| cats            | references | foreign_key: true |
| user            | references | foreign_key: true |


### Association

- has_many :dogs
- has_many :cats
- has_many :users


##  messageテーブル

| Column       | Type       | Options           |
| ------       | ---------- | --------          |
| text         | text       | null: false       |


### Association

- has_many   :users
- belongs_to :pet


アプリケーション名: PetWith

アプリケーション概要: 主に犬や猫が大好きな方へ向けた、画像投稿型の共有アプリ。

URL: (デプロイ済みのURLを記述しましょう)

テスト用アカウント: (ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう)

利用方法: 飼っているペット(犬、猫)の画像を投稿することができる。
                  気に入った画像を投稿し、他人と画像の共有がや、それを見て癒されることができる。このアプリケーションを通して、より犬や猫を好きになれる。

目指した課題解決: 他人がどういったペットを飼っているのか気になる方。また、飼い主でしか撮れないような写真を保持していて第三者にも見てもらいたい方。
                このアプリを通して共有し、画像を見て癒されて欲しい、と思い作成に至った。
。
##要件定義 

##ストーリー(ユースケース)
20代から40代の犬や猫が大好きな男性、女性。
犬や猫を飼っている、または飼ってはいないが、いつかは飼いたい人。
周りがどんなペットを飼っているか気になる人が対象。
自分の飼っているペットを自慢したい人。
ペットを見て癒されたい人。

###画像投稿機能
**目的**
自身のお気に入りのペットの画像を共有し合う為の機能。

###ユーザーログイン機能
**目的**
ユーザーの投稿した画像が一致しているかどうか、わかるようにする為の機能。
最低限必要な情報を入手する為の機能。

###画像の詳細機能
**目的**
投稿した画像の情報を第三者が見れるようにする為の機能。

###画像の編集
**目的**
違う画像を投稿してしまった時や、変更したい情報があった時に編集できるようにする為の機能。

###画像の削除
**目的**
不要な投稿を消したい時に、投稿したユーザーのみが削除できるようにする為の機能。

###ユーザーのマイページ
**目的**
ログイン時に記入したユーザーの個人情報が記載されているページ。
ユーザーの情報を知る為の機能。
画像の詳細からユーザーのページへ飛べるようにする為。


**↓今後実装予定の機能↓**

###チャット機能
**目的**
誰でも気軽に意見交換できるようにする為の機能。


###いいね機能
**目的**
良いと思った投稿画像にいいねが気軽に押せる為の機能。



データベース設計: 


ローカルでの動作方法: (git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）)