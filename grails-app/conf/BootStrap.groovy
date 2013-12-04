import stroymarket.Blog

class BootStrap {

    def init = { servletContext ->
       if (!Blog.count()) {
           Blog firstBlog = new Blog(postName: "Первый блог из БД", prePost: "Краткое описание будущей статьи, которое будем хранить отдельно от всего текста", pubDate: new Date()).save(failOnError: true)
           Blog secondBlog = new Blog(postName: "Второй блог из БД", prePost: "Краткое описание будущей статьи, которое будем хранить отдельно от всего текста", pubDate: new Date()).save(failOnError: true)
       }
    }
    def destroy = {
    }
}
