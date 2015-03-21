<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>
			<g:layoutTitle default="Grails" />
		</title>
		<link rel="stylesheet" href="${resource(dir:'static',file:'css/stylesheet.css')}" />
		<link rel="shortcut icon" href="${resource(dir:'static',file:'images/favicon.gif')}" type="image/x-icon" />
		<g:layoutHead />
		<g:javascript library="application" />
		<g:javascript library="prototype" />
		<g:javascript src="jquery.js"/>
		<g:javascript src="Script-menu-top.js"/>
		<g:javascript src="slider.js"/>
		<g:javascript src="jquery.rating.js"/>
		<link rel="stylesheet" href="${resource(dir:'static',file:'css/jquery.rating.css')}" />
	</head>
	<body>
		<div id="spinner" class="spinner" style="display:none;"> 
			<img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
		</div>
		<%---------BEGIN header--------%>
		<header>
			<section>
				<div class="logo">
			    	<span>
			      		<div id="logo" style="margin:30px; height: 20%;">
			      			<g:link controller="staticPages" action="dashboard"> </g:link>
			      		</div>
			      	</span>
		      	</div>
		    	<div class="user">
		      		<div class="user-icon">&nbsp;</div>
		     		<div class="user-info">Welcome, 
		     			<span id="name"><sec:username/></span>
		     			<br/>Logged in at 
		     			<span id="role">
		        			<sec:ifAnyGranted roles="ROLE_ADMIN">Admin</sec:ifAnyGranted>
		        			<sec:ifAnyGranted roles="ROLE_USER">User</sec:ifAnyGranted>
		        		</span>
		        		<br/><g:link controller="logout"><span class="logout">Logout</span></g:link>
		      		</div>
		    	</div>
			</section>
		</header>
		<%---------BEGIN NAV--------%>
		<nav>
			<div onmouseover="over=true;">
				<div id="nav-menu">
					<section>
						<ul class="menu-top" id="menuprinc">
					        <li><g:link controller="staticPages" action="dashboard">Dasboard</g:link></li>
			      		</ul>
			    	</section>
			 	</div>
  				<%---------BEGIN Menu secondaire--------%>
 				 <div onmouseout="over=false;">
					<section>
						<ul class="sous-menu1" id="sousmenu1">
				    		<li>
				          		<g:link class="create" controller="secRole" action="list">Gestion des roles</g:link>
				        	</li>
				        	<li>
				          		<g:link class="create" controller="user" action="list">Gestion des utilisateurs</g:link>
				        	</li>
				      	</ul>
				    </section>
  				</div><%---------END Menu secondaire--------%>
			</div>
		</nav><%---------END NAV--------%>
		<%---------BEGIN content--------%>
		<div id="content">
		  <g:layoutBody />
		</div><%---------END content----------%>
		<%---------BEGIN footer---------%>
		<footer>
			<section>
		    	<p>dihaw team ©2015</p>
		  	</section>
		</footer><%---------END FOOTER-----------%>
	</body>
</html>