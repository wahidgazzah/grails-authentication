package com.dihaw.usermanager.entity;

import java.util.Set;

class SecUser {

	String username
	String password
	String nom
	String prenom
	Integer age
	String pays
	String ville
	String sexe
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	String email
	String niveau

	static constraints = {
		username blank: false, unique: true
		password blank: false
		nom(nullable: true)
		prenom(nullable: true)
		age(nullable: true)
		pays(nullable: true)
		ville(nullable: true)
		sexe(nullable: true,inList:["Homme","Femme"])
		email (nullable: true)
		niveau(nullable: true,inList:["Etudes secondaires","Bachelier", "Bac+2","Bac+3","Bac+4"," bac +5 et sup"])
	}

	static mapping = {
		password column: '`password`'
	}

	 Set<SecRole> getAuthorities() {
		SecUserSecRole.findAllBySecUser(this).collect { it.secRole } as Set
	}
}