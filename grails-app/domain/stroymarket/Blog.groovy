package stroymarket

class Blog {
    String postName;
    String postName2;
    Date   pubDate;
    String imgSrc;
    String prePost;
    String postContent;
    List<Comment> commentList;

    static constraints = {
        postName(blank: false)
        postName2(nullable: true)
        pubDate(nullable: false)
        prePost(nullable: false)
        postContent(nullable: true)
    }
}
