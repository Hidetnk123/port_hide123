# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  -6.0.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Application Name   
  Photo Post  
  URL:https://port-hide123.herokuapp.com/

* Overview    
  You can post, edit, delete, and browse photos

* How to Use     
  Only logged-in users can post, edit, and delete. If you are not logged in, you can only view

# テーブル設計

## users テーブル

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| nickname            | string  | null: false |
| email               | string  | null: false |
| password            | string  | null: false |

### Association

- has_many :products
- has_many :comments

## products テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | string     | null: false                    |
| user_id           | references | null: false, foreign_key: true |
| genre_id          | integer    | null: false                    |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| text              | string     | null: false                    |
| user_id           | references | null: false, foreign_key: true |
| product_id        | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :product