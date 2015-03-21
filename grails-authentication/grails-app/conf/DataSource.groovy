dataSource {
	logSql = false
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = ""
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}

//Environment specific settings
environments {
	development {
		dataSource {
			url = "jdbc:hsqldb:mem:devDB"
		 dialect = "org.hibernate.dialect.MySQLDialect"
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/usermanager2db"
			properties {
				maxActive = 50
				maxIdle = 25
				minIdle = 1
				initialSize = 1
				minEvictableIdleTimeMillis = 60000
				timeBetweenEvictionRunsMillis = 60000
				numTestsPerEvictionRun = 3
				maxWait = 10000
				testOnBorrow = true
				testWhileIdle = true
				testOnReturn = true
				validationQuery = "select now()"
				}
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
	production {
		dataSource {
			url = "jdbc:hsqldb:mem:devDB"
			dialect = "org.hibernate.dialect.MySQLMyISAMDialect"
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/usermanager2db"
			properties {
				maxActive = 50
				maxIdle = 25
				minIdle = 1
				initialSize = 1
				minEvictableIdleTimeMillis = 60000
				timeBetweenEvictionRunsMillis = 60000
				numTestsPerEvictionRun = 3
				maxWait = 10000
				testOnBorrow = true
				testWhileIdle = true
				testOnReturn = true
				validationQuery = "select now()"
				}
		}
	}
}