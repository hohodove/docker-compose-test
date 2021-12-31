# test-app
## docker-composeのテスト用リポジトリ

■Docker-compose対象コンテナ
・MySQL

Dockerイメージのビルド(初期構築時のみ)
```
cd ~/develop/test-app
docker-compose build
```

コンテナ起動、確認
```
docker-compose up -d
docker ps
```

コンテナ停止
```
docker-compose stop
```

コンテナ内のMySQL接続、TBL確認
```
mysql --defaults-extra-file=~/develop/test-app/mysql-test/.test.cnf
connect testdb;
show tables;
desc employee;
select * from employee;
select * from users;
```
