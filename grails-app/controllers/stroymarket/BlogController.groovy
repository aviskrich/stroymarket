package stroymarket

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class BlogController {

    static defaultAction = "list"

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def list = {
        def blogs = Blog.list([sort: "pubDate", order: "desc"])

        return [blogs: blogs]
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def show = {
        def blogId = Integer.parseInt(params.blogid);

        return [blog: Blog.get(blogId), hasPrev: Blog.exists(blogId - 1), hasNext: Blog.exists(blogId + 1)]
    }
}
