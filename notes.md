### Assignment 1

<!-- ```Dockerfile
``` -->
```shell

# d-detached, p-publish, e-environment
docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
docker container run -d -p 8080:80 --name webserver httpd
docker container run -d --name proxy -p 80:80 nginx

docker ps
curl localhost
```

### Monitoring
```shell
# process list in one container
docker container top - [container_name],

# details of one container config
docker container inspect

# performance stats for all containers
docker container stats
```

### What is happening inside containers
```shell
# runs interactively
docker container run -it [container_name] bash

# run additional commands in existing containers
docker container exec -it
```
