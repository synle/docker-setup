This is a MySQL Database server. More info about this image can be found here:

### How To Run
https://docs.docker.com/samples/library/mysql/
https://medium.com/@backslash112/start-a-remote-mysql-server-with-docker-quickly-9fdff22d23fd
```
sh start.sh
```

### Logging into MySQL Docker
```
MYSQL_DB_NAME=some-mysql && \
docker exec -it $MYSQL_DB_NAME mysql -u root -p # parse and press the Enter key
```

### Allow access from all domain
```
# in the mysql console (used steps above)
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
```

#### With MySQL Client
```
mysql -h 127.0.0.1 -P 3306 -u root -p
```




### SSH into MySQL Docker
```
MYSQL_DB_NAME=some-mysql && \
docker exec -it $MYSQL_DB_NAME bash
```
