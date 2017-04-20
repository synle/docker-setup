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
