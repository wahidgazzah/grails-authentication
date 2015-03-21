class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "home", action: "index")
		
		//"500"(view:'/error')
				
		"/"
		"500"(controller: "error", action: "serverError")
		"404"(controller: "error", action: "notFound")
		"403"(controller: "error", action: "forbidden")
		"500"(view:'/error')
	}
}
