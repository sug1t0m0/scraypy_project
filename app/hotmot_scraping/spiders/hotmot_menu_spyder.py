import scrapy


class HotmotMenuSpider(scrapy.Spider):
    name = "hotmot_menu"
    start_urls = [
        'https://www.hottomotto.com/menu_list/index/15/',
    ]

    def parse(self, response):
        for menu_category in response.css('h3'):
            yield {
                "category" : menu_category.css('h3::text').get(),
                "names": menu_category.css('h3 + div a h4::text').getall(),
            }
