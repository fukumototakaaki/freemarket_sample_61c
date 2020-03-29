![mercari](https://i.gyazo.com/e395d07a2ceebe6b7fa6019bb0a4f2f3.jpg)


<h1 align="center">freemarket_sample</h1>
<br>
<p align="center">
<a>　</a>
<img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" />
<a>　</a>
<img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /><br><br>
<a>　</a><a>　</a>
<a><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" />
<a>　</a>
<a><img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" />
<a>　</a>
<img src="https://user-images.githubusercontent.com/39142850/71774768-d064a980-2fb7-11ea-88ad-4562c59470ae.png" height="65px;" />
<a>　</a>
<a><img src="https://user-images.githubusercontent.com/39142850/71774786-37825e00-2fb8-11ea-8b90-bd652a58f1ad.png" height="60px;" />
</p><br>
<h3 align="center">- Team Members -</h3>
<p align="center">
<b><a><a href="https://github.com/akkt222"><img 
![profile](https://pbs.twimg.com/media/ES0vfD4UYAEgnp9?format=jpg&name=small)
src="https://avatars3.githubusercontent.com/u/55902529?s=460&u=6e465470a5482e26b16c6d98027b62aad317b307&v=4" width="100px;" /></a></b><a>　</a>
<a><a href="https://github.com/fukumototakaaki"><img 
![profile](https://pbs.twimg.com/media/ES0vfD4UYAEgnp9?format=jpg&name=small)
src="https://avatars2.githubusercontent.com/u/57784853?s=460&v=4" width="100px;" /></a></b><a>　</a>
<a><a href="https://github.com/Ynobusa"><img 
![profile](https://pbs.twimg.com/media/ES0vfD4UYAEgnp9?format=jpg&name=small)
src="https://avatars3.githubusercontent.com/u/58387687?s=460&v=4" width="100px;" /></a></b><a>　</a>
<a><a href="https://github.com/annaPanda8170"><img 
![profile](https://pbs.twimg.com/media/ES0vfD4UYAEgnp9?format=jpg&name=small)
src="https://avatars0.githubusercontent.com/u/57531048?s=460&v=4" width="100px;" /></a></b><a>　</a>
<a><a href="https://github.com/shuya-tamaru"><img 
![profile](https://pbs.twimg.com/media/ES0vfD4UYAEgnp9?format=jpg&name=small)
src="https://avatars2.githubusercontent.com/u/57956439?s=460&u=ad96feca912e3680b880fdd13e07cc17036a34b3&v=4" width="100px;" /></a></b><a>　</a>
<br><br><br><br>

# アプリケーション情報
## 概要
テックキャンプの最終課題にて作成した、フリーマーケットのクローンアプリケーションです。<br>
### 接続情報
- URL：http://13.114.185.113/
- ID/Pass
```
ID：admin
Pass：2222
```
- テスト用アカウント等<br>

購入者用<br>
```
E-mail：aaa@aaa
Pass：abcd123
```
購入用カード情報<br>
```
番号：4242424242424242
期限：01/21
セキュリティコード：123
```
出品者用<br>
```
E-mail：bbb@bbb
Pass：1234abc
```

## 開発状況
開発期間：2020/1/18～2020/4/4<br>
開発体制：人数：5名<br>
　　　　　アジャイル開発（スクラム）<br>
　　　　　Trelloによるタスク管理<br>

## 動作確認方法
- Chromeの最新版を利用してアクセスしてください。<br>
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。<br>
- 接続先およびログイン情報については、上記の通りです。<br>
- 同時に複数の方がログインしている場合に、ログインできない可能性がございます。<br>
- 出品方法は以下の手順で確認できます。<br>
テストアカウントでログイン→トップページから出品ボタン押下→商品情報入力→商品出品<br>
（なお、出品した商品はトップページの人気ブランドのスペースにご指定したブランドの箇所に表示されます。）<br>
<br>
また、商品情報編集、商品出品停止、商品削除は以下の手順で確認できます。<br>

- 商品情報編集：<br>
出品した商品のアイコンを押下→商品の編集ボタン押下→商品情報入力→商品の編集ボタン押下<br>
- 商品出品停止：<br>
出品した商品のアイコンを押下→出品を一旦停止するボタン押下<br>
（なお、出品を再開する場合は、出品した商品のアイコンを押下→出品を再開するボタン押下）<br>
- 商品削除：<br>
出品した商品のアイコンを押下→この商品を削除するボタン押下<br>
<br>
購入方法は以下の手順で確認できます。<br>
テストアカウントでログイン→トップページの新着アイテムから商品選択→商品購入<br>
<br>
確認後、ログアウト処理をお願いします。<br>

# DB design
![2020 0209 データベース ER 図　メルカリ のコピー](https://user-images.githubusercontent.com/57956439/77843503-cdeda680-71d8-11ea-895c-46ec5ade6872.png)

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index: true|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|birthday_year|integer|null: false|
|birthday_month|integer|null: false|
|birthday_date|integer|null: false|
### Association
- has_many :items
- has_many :sns_credentials
- has_one  :cellphone
- has_one  :address
- has_one  :card
​
​
## cardsテーブル(クレジットカード)
|Column|Type|Options|
|------|----|-------|
|customer_id|integer|null:false|
|card_id|integer|null:false|
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user


## addressesテーブル(住所)
|Column|Type|Options|
|------|----|-------|
|zip_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null:false|
|address|string|null:false|
|building|string||
|phone_tell|string||
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user


## cellphonesテーブル(携帯電話)
|Column|Type|Options|
|------|----|-------|
|number|string|null: false, unique: true|
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user
​
​
## sns_credentialsテーブル(SNSアカウントでログインする機能)
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|provider|string||
|uid|string||
### Association
- belongs_to :user
​

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|description|string|null: false|
|category|references|null: false, index: true, foreign_key: true|
|brand|references|foreign_key: true, null: false|
|item_status|integer|null: false|
|fee_side|integer|null: false|
|shipping_way|integer|null: false|
|region|integer|null: false|
|shipping_days|integer|null: false|
|price|integer|null: false|
|buyer_user|references|foreign_key: true|
|saler_user|references|null: false, foreign_key: true|
|transaction_status|integer|null:false|
### Association
- belongs_to :user
- belongs_to  :category
- belongs_to :brand
- has_many :images


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|index: true|
### Association
- has_many :items
- has_ancestry
​
​
## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items
​
​
## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to :item
​
