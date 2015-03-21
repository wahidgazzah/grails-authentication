grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.server.port.http = 9080 // default port is 8080

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {

    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()


    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.

         runtime 'mysql:mysql-connector-java:5.1.16'
    }
	
}