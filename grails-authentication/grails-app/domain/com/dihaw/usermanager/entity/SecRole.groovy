package com.dihaw.usermanager.entity;

class SecRole {

	String authority
	String description
	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
		description(blank: true)
	}
}
