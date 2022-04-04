# テーブル設計

## usersテーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| email              | string  | null: false, unique:true |
| name               | string  | null: false              |
| encrypted_password | string  | null: false              |
| profile            | text    | null: false              |

## Association
-has_many :prototypes
-has_many :comments


## prototypesテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| detail      | text       | null: false                    |
| point       | text       | null: false                    |
| category_id | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

## Association
-has_many :comments
-belongs_to user


##　commentsテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| prototype | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

## Association
-belongs_to :user
-belongs_to :prototype