package stroymarket

import grails.plugins.springsecurity.Secured
import org.stroymarket.security.Role
import org.stroymarket.security.User
import org.stroymarket.security.UserRole

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {}

    def blog() {}

    def userList() {
        List<User> users = User.list()

        return [users: users]
    }

    def user = {
        def user = params.userId != null ? User.findById(Long.parseLong(params.userId as String)) : new User()

        return [user: user, newuser: params.newuser == null ? false : params.newuser]
    }

    def createUser() {
        redirect(action: "user", params: [newuser: true])
    }

    def updateUser() {
        User user = params.userId != null ? User.get(params.userId) : new User()

        user = bindData(user, params, ["id"])
        if ((params.password1 as String).size() > 0) {
            user.setPassword(params.password1)
        }

        user = user.id != null ? user.merge() : user.save()

        if (params.roles != null && params.roles != user.getAuthoritiesAsString()) {
            UserRole.removeAll(user)
            user.addAuthority(Role.findById(params.roles))
        }

        redirect(action: "userList")
    }
}
