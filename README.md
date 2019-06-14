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
## Set up Dockers
https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository

```

 sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=armhf] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

 sudo apt-get update

 sudo apt-get install docker-ce
```

```
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
```

## Other useful docker
### Mysql
```
docker pull mysql
docker run -p 3306:3306 --name docker-mysql -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
```

### For Windows and docker-toolbox
#### Finding ip / host to use for windows
```
 docker-machine ip
 192.168.99.100
```

### To Reference Host in NGINX form Docker Container
#### For mac
```
docker.for.mac.localhost
```

#### For windows
```
docker.for.win.localhost
```


### Troubleshooting with Windows
```
Look like in windows you can have a docker image name with /, so remove the slash.
```
