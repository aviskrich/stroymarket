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

    transient String roles;

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
}
