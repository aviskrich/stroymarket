package stroymarket

class BlogController {

    static defaultAction = "list"

    def list = {
        def blogs = Blog.list([sort: "pubDate", order: "desc"])

        return [blogs: blogs]
    }

    def show = {
        def blogId = Integer.parseInt(params.blogid);

        return [blog: Blog.get(blogId), hasPrev: Blog.exists(blogId - 1), hasNext: Blog.exists(blogId + 1)]
    }
}
