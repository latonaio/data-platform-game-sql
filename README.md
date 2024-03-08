# data-platform-game-sql 

data-platform-game-sql は、データ連携基盤において、ゲームデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-game-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-game-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-game-sql-header-data.sql（データ連携基盤 ゲーム - ヘッダデータ）
* data-platform-game-sql-header-doc-data.sql（データ連携基盤 ゲーム - ヘッダ文書データ）
* data-platform-game-sql-campaign-data.sql（データ連携基盤 ゲーム - キャンペーンデータ）
* data-platform-game-sql-event-data.sql（データ連携基盤 ゲーム - イベントデータ）
* data-platform-game-sql-partner-data.sql（データ連携基盤 ゲーム - 取引先データ）
* data-platform-game-sql-address-data.sql（データ連携基盤 ゲーム - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
