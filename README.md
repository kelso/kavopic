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

## TODO

rails g model TransactionCategory name:string default_amount:integer
+ doplnit do seedov TransactionCategory
rails g model Transaction amount:integer created_by_id:uuid:index user_id:uuid:index
