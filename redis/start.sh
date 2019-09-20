docker build -t redis-server . && \
docker run \
  -p 6379:6379 \
  redis-server
