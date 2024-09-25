import scrapy

class BooksSpider(scrapy.Spider):
    name = "books"
    start_urls = ['https://books.toscrape.com/']

    def parse(self, response):
        for book in response.css('article.product_pod'):
            yield {
                'Titulo': book.css('h3 a::attr(title)').get(),
                'Preço': book.css('p.price_color::text').get(),
                'Disponibilidade': book.css('p.instock.availability i::attr(class)').get(),
                'Avaliação': book.css('p.star-rating::attr(class)').get(),
            }

        next_page = response.css('li.next a::attr(href)').get()
        if next_page is not None:
            yield response.follow(next_page, self.parse)

