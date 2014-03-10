package stroymarket

import grails.plugins.springsecurity.Secured
import org.stroymarket.security.User
import org.stroymarket.security.UserRole

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {}

    def blog() {}

    def userList() {
        List<User> users = User.list()

        for (user in users) {
            user.roles = new String();
            UserRole.findAllByUser(user).each { user.roles = user.roles.concat(it.role.authority) }
        }

        return [users: users]
    }

    def user() {
        def userId = Integer.parseInt(params.userid);

        return [user: User.findById(userId)]
    }

    def updateUser() {
        def user = User.get(params.userId)
        bindData(user, params)
        render "${user?.firstName} ${user?.lastName}"
    }
}
