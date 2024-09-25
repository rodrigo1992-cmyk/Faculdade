import scrapy

class NewsSpider(scrapy.Spider):
    name = "news"
    start_urls = [f'https://difusoranews.com/bem-estar/page/{i}/' for i in range(1, 6)]

    def parse(self, response):
        for link in response.css('h3.text-xl'):
            yield {
                 'titulo': link.css('a::attr(alt)').get(),
                 'link': link.css('a::attr(href)').get(),
                 }