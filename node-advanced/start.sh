docker build -t synle/node-advanced .
docker run \
  -v $(PWD)/src:/usr/src/app \
  -v /usr/src/app/node_modules \
  -p 8080:8080 \
  synle/node-advanced
