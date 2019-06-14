## Notes
- https://stackoverflow.com/questions/42438381/docker-nginx-proxy-to-host


## Run
```

docker build -t service-a . && docker run -it -p 9001:9001 --name service-a
docker build -t service-b . && docker run -it -p 9001:9001 --name service-b

```
