#!/bin/sh

docker build -t scraypy-base-app .

docker run -itd -v $(pwd)/app:/usr/src/app \
--name scraypy-base-app \
scraypy-base-app

docker exec -it scraypy-base-app scrapy startproject scraping .