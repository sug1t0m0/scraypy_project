#!/bin/sh

docker build -t scrapy-base-app .

docker run -itd -v $(pwd)/app:/usr/src/app \
--name scrapy-base-app \
scrapy-base-app

docker exec -it scrapy-base-app scrapy startproject scraping .