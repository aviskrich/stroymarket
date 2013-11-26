package stroymarket

class Comment {

    String  author;
    Date    pubDate;
    String  text;

    static constraints = {
        author(blank: false)
        pubDate(nullable: false)
        text(blank: false)
    }
}
