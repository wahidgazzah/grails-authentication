package com.dihaw.usermanager.controller

import grails.plugins.springsecurity.Secured
import com.dihaw.usermanager.entity.*;

@Secured(['ROLE_ADMIN'])
class UserController extends grails.plugins.springsecurity.ui.UserController {
	
	def exportService
	
	def index = {
		redirect(action: "list", params: params)
	}
	
	def list = {
		params.max = Math.min(params.max ? params.int('max') : 4, 100)
		if (params?.format && params.format != "html") {
		response.contentType = grailsApplication.config.grails.mime.types[params.format]
		response.setHeader("Content-disposition","attachment; filename=utilisateurs.${params.extension}")
		
		List fields = ["prenom", "nom","sexe", "age","email", "niveau","ville", "pays"]
		Map labels = ["prenom" : "Prenom", "nom":"Nom","sexe":"Sexe", "age":"Age","email":"Email", "niveau":"Niveau","ville":"Ville", "pays":"Pays"]
		Map parameters = [title: "Liste des utilisateurs"]

		exportService.export(params.format, response.outputStream,SecUser.list(),fields,labels,[:],parameters)
		}
	   [userInstanceList: SecUser.list(params), userInstanceTotal: SecUser.count()]
	}
	
	def show = {
		def userInstance = SecUser.get(params.id)
		if (!userInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
			redirect(action: "list")
		}
		else {
			[userInstance: userInstance]
		}
	}
	
	
	def searchAJAX = {
		
		def users = SecUser.findAllByPrenomLike("%${params.query}%")
		
		//Create XML response
		render(contentType: "text/xml") {
			results() {
				users.each { user ->
					result(){
						
						name(user.prenom)
						//Optional id which will be available in onItemSelect
						id(user.id)
					  }
				   }
				 }
			   }
			}
	
	def statistiqueApplication = {
		
		if(!params.max) params.max = 10
		if (params?.format && params.format != "html") {
		response.contentType = grailsApplication.config.grails.mime.types[params.format]
		response.setHeader("Content-disposition","attachment; filename=utilisateurs.${params.extension}")
		
		List fields = ["prenom", "nom","sexe", "age","email", "niveau","ville", "pays"]
		Map labels = ["prenom" : "Prenom", "nom":"Nom","sexe":"Sexe", "age":"Age","email":"Email", "niveau":"Niveau","ville":"Ville", "pays":"Pays"]
		Map parameters = [title: "Liste des utilisateurs"]

		exportService.export(params.format, response.outputStream,SecUser.list(params),fields,labels,[:],parameters)
		}
		[usersInfos: usersInfos,id:idap,applicationInst:applicationInst,applicationInstanceTotal:applicationInstanceCount,applicationName:applicationName]
	}
	
}