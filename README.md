# 概要
Dockerコンテナにパッケージ管理ツール`poetry`を使って分析環境を構築する。

# 使い方
## ビルドとコンテナ起動
以下のコマンドによりDockerイメージのビルドとコンテナを起動できる。
```
docker-compose up -d
```

_※`Dockerfile`を変更しリビルドしたい場合は`docker-compose up -d --build`を実行する_

## jupyterへのアクセス
コンテナ実行後、以下にアクセスすることでJupyter labにアクセスできる。  
<a>http://localhost:8888/lab</a>

## テスト実行
以下のコマンドで`tests/`配下のテストコードを実行できる。
```
pytest
```

## パッケージの追加
以下のコマンドでPythonパッケージを追加できる。
```
poetry add <追加したいパッケージ>
```