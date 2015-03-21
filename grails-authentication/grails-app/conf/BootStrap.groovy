import com.dihaw.usermanager.entity.SecRole;
import com.dihaw.usermanager.entity.SecUser;
import com.dihaw.usermanager.entity.SecUserSecRole;

class BootStrap {

  def springSecurityService;
	  
	  def init = { servletContext ->
		  
		  def adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true)
		  def userRole = new SecRole(authority: 'ROLE_USER').save(flush: true)
	  
		  String password = springSecurityService.encodePassword('password')
	  
		  def adminUser = new SecUser(username: 'admin', enabled: true, password: password)
		  def userUser = new SecUser(username: 'user', enabled: true, password: password)
	  
		  adminUser.save(flush: true)
		  userUser.save(flush: true)
		  
		  SecUserSecRole.create adminUser, adminRole, true
		  SecUserSecRole.create userUser, userRole, true
	  
   }
   
	def destroy = {
	}
}
