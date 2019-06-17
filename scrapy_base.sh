#!/bin/sh

docker build -t hotmot-scrapy .

docker run -itd -v $(pwd)/app:/usr/src/app \
--name hotmot-scraping-app \
hotmot-scrapy

docker exec -it hotmot-scraping-app scrapy startproject hotmot_scraping .