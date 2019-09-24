# README

## 参考にしたテキスト
 - https://railsguides.jp/getting_started.html

### 起動方法
 - `rails server`

### テスト方法
 - `bundle exec rake`

### ブラウザで見る方法
 - http://localhost:3000/


### 使ったコマンド
```
gem install rails
rails new senro
cd blog
rails generate controller Welcome index
rails generate controller Articles
rails generate model Article title:string text:text
rails db:migrate
```



## 編集した箇所
 - app/stylesheets/welcome.scss
 - app/controllers/welcome_controller.rb
 - app/controllers/articles_controller.rb
 - app/views/welcome/index.html.erb
 - app/views/articles/index.html.erb
 - app/views/articles/new.html.erb
 - app/views/articles/show.html.erb
 - app/config/routes.rb

## メモ

* 動いた Ruby version
   - ruby 2.6.3p62 (2019-04-16 revision 67580) [x64-mingw32]

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
