Assignment 1

docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysq
docker container run -d -p 8080:80 --name webserver httpd
docker container run -d --name proxy -p 80:80 nginx

docker ps
curl localhost
