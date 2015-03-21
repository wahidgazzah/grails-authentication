package com.dihaw.usermanager.controller

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class StaticPagesController {

    def index = { }
	
	def dashboard = { }
	
}
