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

        for (user in users) {
            user.roles = new String();
            UserRole.findAllByUser(user).each { user.roles = user.roles.concat(it.role.authority) }
        }

        return [users: users]
    }

    def user = {
        def user = params.userId != null ? User.findById(params.userId) : new User()
        def roles = Role.all

        return [user: user, newuser: params.newuser == null ? false : params.newuser, roles: roles]
    }

    def createUser() {
        redirect(action: "user", params: [newuser: true])
    }

    def updateUser() {
        def user = params.userid != null ? User.get(params.userId) : new User()

        if (params.roles != null && params.roles != user.roles) {
            UserRole.removeAll(user)
            UserRole.create(user, Role.create().with {authority = params.roles} as Role).save()
        }

        bindData(user, params)
        if ((params.password1 as String).size() > 0) {
            user.setPassword(params.password1)
        }

        user.save()
        render "${user.roles}"
//        redirect(action: "userList")
    }
}
