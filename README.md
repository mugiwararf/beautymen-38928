# アプリケーション名
### menbeauty  


# アプリケーション概要  
男性の美容に関して、コミュニケーションをとることで、情報を共有しあって新しい発見や日々のモチベーションを上げることができる。

# URL

# テスト用アカウント
- Basic認証パスワード　2222
- Basic認証ID 　　　　admin
- メールアドレス　test@test.com
- パスワード 　　　　test1991

# 利用方法

# おすすめの美容方法など投稿
1    　トップページのヘッダーから新規登録を行う。

2 　投稿ボタンからタイトル、アイテムカテゴリ、おすすめのポイント、使用方法、画像を入力して投稿。

# 情報の共有
1  　投稿の詳細から、コメントができ情報の共有などをコメントで交流できる。

2   トップページの投稿から気に入った投稿があればいいねを押せる。 


# アプリケーションを作成した背景
自分に課題をヒアリングし、男性の美容に関する情報があまりないと思い、課題を分析した結果、情報を共有してコミュニケーションが取れる場所がないと仮説を立てました。他の男性でも美容に対して興味などがあるがやり方や何を使ったらいいのかわからないという人が多いと仮定して、情報を共有してコミニュケーションができるアプリケーションの開発をすることにしました。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1NbvqvMto_ntqKZHIc7wIRvZdH_GIONDuBdllEb9KPdA/edit#gid=0

# 実装した機能についての画像やGIFおよびその説明
- トップページ
URL: https://gyazo.com/3506e7de6381d6a9a723d793be4d1531

- ユーザー管理機能
- 新規登録画面
URL: https://gyazo.com/05e2ad7c0fd0b861ef3b2430f8faa7df
- ログイン
URL:https://gyazo.com/f6829d4bf2018bc7af33dc4b3b5c2832
- ユーザー詳細
URL: 

- 投稿機能
URL: https://gyazo.com/62c93c014b1334ad757ce631bec83aa6
- 詳細機能
URL: https://gyazo.com/eee0e57c21fbc983f9aa8f74d5911b29
- 編集機能
URL: https://gyazo.com/e17d9fba6606eddfbcf9810078b0a2e8
- 削除機能
URL: https://gyazo.com/83b52c90d4392cc5234c1b6658d0f966
- プルダウン
URL: https://gyazo.com/18aacbc3c3fb5146e6cbf2b77a68ccac

- コメント機能
URL: https://gyazo.com/70dbc8876fa74d4330ffe42a5dfee055

- いいね機能
URL: https://gyazo.com/ee10f7ed696ebdf8d01fb69b8667c179

# 実装予定の機能
フォロー機能、ジャンルごとに投稿を分ける。
検索機能
タグ付け

# データベース設計  
[![Image from Gyazo](https://i.gyazo.com/47f4eec37833d521ea8c9bf425ce2e7c.png)](https://gyazo.com/47f4eec37833d521ea8c9bf425ce2e7c)
# 画面遷移図 
[![Image from Gyazo](https://i.gyazo.com/04b8d0034244ba67f2a28eedf7dd8a66.png)](https://gyazo.com/04b8d0034244ba67f2a28eedf7dd8a66)

# 開発環境  
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理

# ローカルでの動作方法
以下のコマンドを実行

% git https://github.com/mugiwararf/beautymen-38928.git

% cd beautymen-38928

% bundle install

% yarn install

# 工夫したポイント
ユーザーの詳細が分かるように詳細機能を実装してプロフィールと投稿一覧を実装。

お気に入りの投稿などがあった時にアクションを起こせるようにいいね機能を実装。

プルダウンでメニューが出るようにAjaxで一覧が出るように実装。