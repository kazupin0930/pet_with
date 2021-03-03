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
- has_many   :chats


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


##  chatテーブル

| Column       | Type       | Options           |
| ------       | ---------- | --------          |
| text         | text       | null: false       |
| checked      | boolean    | null: false       |
| user         | references | foreign_key: true |


### Association

- has_many   :users