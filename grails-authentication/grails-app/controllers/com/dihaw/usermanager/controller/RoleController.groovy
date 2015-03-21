package com.dihaw.usermanager.controller

import grails.plugins.springsecurity.Secured
import com.dihaw.usermanager.entity.*

@Secured(['ROLE_ADMIN'])
class RoleController extends grails.plugins.springsecurity.ui.RoleController {
	
	
		
}
