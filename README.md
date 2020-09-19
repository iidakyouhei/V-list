## datas_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_id|integer|null: false, foreign_key: true|
|rawdata_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :rawdata
- belongs_to :user

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|

### Association
- has_many :datas_tags
- has_many :rawdata, through: :datas_tags

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|email|string|null: false|
|password|string|null: false|


### Association
- has_many :Rawdatas

## Rawdatasテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|title|text|null: false|
|image|text|null: false|

### Association
- belongs_to :user
- has_many :datas_tags
- has_many  :tags,  through:  :datas_tags
