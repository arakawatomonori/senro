# README

## セットアップ方法

### Macの場合
  - Terminal.app を起動する
  - senroディレクトリに移動する
  - `./scripts/setup-macos.sh` と実行する

### Windows10の場合
  - Windowsボタンを右クリックしてPowerShellを管理者として起動
  - `Set-ExecutionPolicy Bypass` と実行する
  - senroディレクトリに移動する
  - `./scripts/setup-windows.ps1` と実行する


## 起動方法
  - `bundle exec rails server`

## ブラウザで見る方法
  - http://localhost:3000/
  - https://senro.herokuapp.com/

## テスト方法
  - `bundle exec rubocop`
  - `bundle exec rake db:migrate RAILS_ENV=test`
  - `bundle exec rake`

## データベース更新方法
  - `bundle exec rake db:migrate`


## Railsの基本的なディレクトリ構造
(Articleという名前のModelがあったときの例)

https://ja.wikipedia.org/wiki/Model_View_Controller
https://www.javadrive.jp/rails/ini/index7.html

  - `app/`   Railsアプリケーションのソースコードが入っているディレクトリ
    - `controllers/`   Controllerの入っているディレクトリ
      - `articles_controller.rb`
    - `models/`   Modelの入っているディレクトリ
      - `article.rb`
    - `views/`   Viewの入っているディレクトリ
      - `layouts/`
        - `application.html.erb`
      - `articles/`
        - `_form.html.erb`
        - `edit.html.erb`
        - `index.html.erb`
        - `new.html.erb`
        - `show.html.erb`
  - `config/`   設定ファイルが入っているディレクトリ
    - `routes.rb`   RailsアプリケーションとURLの対応付けを定義している設定ファイル
  - `db/`   データベース関係のファイルが入っているディレクトリ
    - `migrate/`   データベースマイグレーションのためのファイルが入っているディレクトリ
      - `20YYMMDDHHMMSS_create_articles.rb`
    - `schema.rb`
  - `test/`   テスト関係のファイルが入っているディレクトリ
    - `controllers/`
      - `articles_controller.rb`
    - `fixtures/`
      - `articles.yml`
    - `models/`
      - `article_test.rb`


## 参考にしているテキスト
  - https://railsguides.jp/getting_started.html


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

### 編集した箇所
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

