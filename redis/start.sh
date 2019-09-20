REDIS_NAME=some-redis
docker stop $REDIS_NAME
docker rm $REDIS_NAME
docker run --name $REDIS_NAME \
  -p 6379:6379 \
  -d redis
