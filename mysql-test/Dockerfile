# M1 Mac用のimage
FROM --platform=linux/x86_64 mysql:8.0.21

# ポート設定
EXPOSE 3306

# MySQLの設定ファイルをコピー
COPY ./config/my.cnf /etc/mysql/conf.d/my.cnf

# docker run時の実行コマンド
CMD [ "mysqld" ]
