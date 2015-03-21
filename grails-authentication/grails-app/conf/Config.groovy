//google.analytics.webPropertyID = 
//google.analytics.enabled = true

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text/plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000
// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// whether to install the java.util.logging bridge for sl4j. Disable for AppEngine!
grails.logging.jul.usebridge = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// set per-environment serverURL stem for creating absolute links
environments {
    development {
        grails.logging.jul.usebridge = true
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}




// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console
    // appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error  'org.codehaus.groovy.grails.web.servlet',  		//  controllers
           'org.codehaus.groovy.grails.web.pages', 			//  GSP
           'org.codehaus.groovy.grails.web.sitemesh', 		//  layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping', 		// URL mapping
           'org.codehaus.groovy.grails.commons', 			// core / classloading
           'org.codehaus.groovy.grails.plugins', 			// plugins
           'org.codehaus.groovy.grails.orm.hibernate', 		// hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'

    warn   'org.mortbay.log'
}



grails {
	mail {
		host = "smtp.gmail.com"
		port = 465
		username = "test.dihaw@gmail.com"
		password = "dihawtest123"
		props = ["mail.smtp.auth":"true",
					"mail.smtp.socketFactory.port":"465",
					"mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
					"mail.smtp.socketFactory.fallback":"false"]
	}
}


grails.mail.default.from="test.dihaw@gmail.com"

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.dihaw.usermanager.entity.SecUser'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'com.dihaw.usermanager.entity.SecUserSecRole'
grails.plugins.springsecurity.authority.className = 'com.dihaw.usermanager.entity.SecRole'


grails.plugins.springsecurity.interceptUrlMap = [
	'/participant/**':                         ['IS_AUTHENTICATED_ANONYMOUSLY'],
	'/css/**':                             	   ['IS_AUTHENTICATED_ANONYMOUSLY'],
	'/images/**':                              ['IS_AUTHENTICATED_ANONYMOUSLY']
]	
	
grails.plugins.springsecurity.successHandler.defaultTargetUrl = "/staticPages/dashboard"
