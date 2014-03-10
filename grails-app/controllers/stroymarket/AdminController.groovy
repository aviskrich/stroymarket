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
        def user = params.userId != null ? User.findById(params.userId) : new User()

        return [user: user, newuser: params.newuser==null?false:params.newuser]
    }

    def createUser() {
        redirect(action: "user", params: [newuser: true])
    }

    def updateUser() {
        def user = params.userid != null ? User.get(params.userId) : new User()
        bindData(user, params)
        if ((params.password1 as String).size() > 0) {
            user.setPassword(params.password1)
        }
        user.save()
        redirect(action: "userList")
    }
}
