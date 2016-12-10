Simple Docker Me by Examples
============================

```
#To Login
docker login

#To Push
docker push synle/nginx
```

## Note
- Use `-d` for daemon mode

## Runs

### nginx-simple

```
docker build -t synle/nginx .
docker run -p 80:80 --name synle/nginx
```


### php-simple

```
docker build -t synle/php-simple .
docker run -p 8080:80 synle/php-simple
```

### node-simple

```
docker build -t synle/node-simple .
docker run -p 80:8080 synle/node-simple
```
