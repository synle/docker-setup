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


### Docker Compose
#### Command Notes
```
docker-compose kill -s SIGINT
docker-compose up
```

#### sample docker-compose.yml
```
version: '3'

services:
  nucleus-redis:
    build: './ops/redis-cache'
  nucleus-nginx-proxy:
    ports:
      - '443:443'
    build:
      context: .
      dockerfile: './ops/nucleus-proxy'
```


### Passing Variables to Containers
```
docker run --rm -ti --env-file .env  ubuntu
```

Or Use
```
...
 -e POSTGRES_ENV_POSTGRES_PASSWORD='foo'
```



#### Docker flows
Start with `image` > then start image as `container`.

#### Commands for Docker images
```
docker images

docker rmi `image_id`

# build image from Dockerfile
docker build -t `image_name` .
```


#### Dockerfile
Note `ENTRYPOINT` is a run-later command, whereas `CMD` is run instantly.
```
FROM synle/sy-java-node
WORKDIR /etc/my_app
ENTRYPOINT [ "./gradlew", "bootRun" ]
EXPOSE 8443
```

#### Commands for Docker container
```
docker ps

# to show all processes even one that exitted
docker ps -a 

docker rm `container_id`

# commit and update changes to image
docker commit `container_id` `image_name`
```

#### Docker hub
```
docker login
docker tag `image_id` synle/httpd:version1.0
```


#### Docker run
```
docker run --rm -ti -p 8443:8443 -v /Users/syle/git/my_app:/etc/my_app synle/synle/sy-java-node
```



#### Note on python and stuffs
```
apt-get update -y && apt-get install -y libmysqlclient-dev python python-pip libxml2-dev libxslt1-dev curl git
```
