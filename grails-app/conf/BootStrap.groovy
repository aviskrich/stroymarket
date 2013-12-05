import org.stroymarket.security.Role
import org.stroymarket.security.User
import org.stroymarket.security.UserRole
import stroymarket.Blog

class BootStrap {

    def init = { servletContext ->
        if (!Blog.count()) {
            Blog firstBlog = new Blog(postName: "Первый блог из БД", prePost: "Краткое описание будущей статьи, которое будем хранить отдельно от всего текста", pubDate: new Date()).save(failOnError: true)
            Blog secondBlog = new Blog(postName: "Второй блог из БД", prePost: "Краткое описание будущей статьи, которое будем хранить отдельно от всего текста", pubDate: new Date()).save(failOnError: true)
        }

        if (!User.count()) {
            Role roleUser = new Role(authority: 'ROLE_USER').save(failOnError: true)
            Role roleAdmin = new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

            User user = new User(username: 'user', password: 'user', enabled: true, firstName: "Пользователь", lastName: "Пользов").save(failOnError: true);
            User admin = new User(username: 'admin', password: 'admin', enabled: true, firstName: "Админ", lastName: "Админов").save(failOnError: true);

            UserRole userRole = new UserRole(user: user, role: roleUser).save(failOnError: true)
            UserRole adminRole = new UserRole(user: admin, role: roleAdmin).save(failOnError: true)
        }
    }
    def destroy = {
    }
}
