package org.stroymarket.security

import grails.plugins.springsecurity.SpringSecurityService

class User {

    transient springSecurityService

    String username
    String password
    String firstName
    String lastName
    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static constraints = {
        username blank: false, unique: true
        password blank: false
    }

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    String getAuthoritiesAsString() {
        StringBuilder result = new StringBuilder()
        getAuthorities().each { result.append it.authority }
        result.toString()
    }

    def UserRole addAuthority(Role role) {
        new UserRole().with {
            user = this
            it.role = role
            it
        }.save()
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }

    SpringSecurityService getSecrutiryService() {
        return springSecurityService
    }

    User getCurrentUserName() {
        springSecurityService.currentUser as User
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", enabled=" + enabled +
                ", accountExpired=" + accountExpired +
                ", accountLocked=" + accountLocked +
                ", passwordExpired=" + passwordExpired +
                ", version=" + version +
                '}';
    }
}
