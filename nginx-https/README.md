### nginx-https

```
docker build -t synle/nginxhttps .
docker run -it -p 8443:8443 -d --name synle/nginxhttps
```


If you run into this issue `"docker run" requires at least 1 argument.`, then use the following.

```
docker build -t synle/nginxhttps . && docker run -it -p 8443:8443 synle/nginxhttps
```
