package stroymarket

class Blog {
    String postName;
    String postName2;
    Date   pubDate;
    byte[] img;
    String prePost;
    String post;
    List<Comment> comments;


    static constraints = {
        postName (blank: false);
        pubDate (blank: false);

    }
}
