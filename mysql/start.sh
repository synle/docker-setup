MYSQL_DB_NAME=some-mysql
MYSQL_ROOT_PASSWORD=password
MYSQL_USER=sy
MYSQL_PASSWORD=password

echo """
Information
==============
==============
MYSQL_DB_NAME=$MYSQL_DB_NAME
MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_USER=$MYSQL_USER
MYSQL_PASSWORD=$MYSQL_PASSWORD
==============
==============
"""

#
docker stop $MYSQL_DB_NAME
docker rm $MYSQL_DB_NAME
docker run  --name $MYSQL_DB_NAME \
  -p 3306:3306 \
  -e MYSQL_DATABASE=$MYSQL_DB_NAME \
  -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
  -e MYSQL_USER=$MYSQL_USER \
  -e MYSQL_PASSWORD=$MYSQL_PASSWORD \
  -e MYSQL_ROOT_HOST=% \
  -v data:/var/lib/mysql \
  -d mysql:latest
