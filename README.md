## 万葉様新入社員教育課題

### テーブル構造

*User*

カラム  | 型
--- | ---
name | string

*Task*

カラム  | 型
--- | ---
user_id | references
name | string
content | string
priority | string
status | string
limit | timestamp

*Label*

カラム  | 型
--- | ---
task_id | references
name | string


###  Herokuデプロイ

#### 環境
- ruby 2.6.3
- Rails 5.2.3

#### デプロイ手順

1. コミットする

```
$ git add .
$ git commit -m "メッセージ"
```

2. Herokuにアプリケーション作成

```
$ heroku login
$ heroku create
```
3. Herokuにデプロイする
```
$ git push heroku master
```
4. Heroku上にデータベース作成
```
$ heroku run rails db:migrate
```
5. アプリケーションにアクセスするか確認。
```
$ heroku config

https://アプリ名.herokuapp.comにアクセス

もしくは

$ heroku open
```





