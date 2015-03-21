<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="main" />
		
		<g:set var="entityName" value="${message(code: 'categorie.label', default: 'Categorie')}" />
		<title>
			<g:message code="Dashboard" />
		</title>
	</head>
	<body>
		<div class="body">
	  		<div class="list">
	   			 <section>
	      			<div id="titre-page">Dashboard</div>
	      
	      				<div class="dash-col left">
	       					<div class="dash-col-icon" style=""></div>
	        				<div class="dash-col-titre">Configuration</div>
	        				<div class="dash-col-liens">
					  		<ul>
								<li>
									<g:link class="create" controller="secRole" action="list">Gestion des roles</g:link>
					            </li>
					 			<li>
					   				<g:link class="create" controller="user" action="list">Gestion des utilisateurs</g:link>
					            </li>
					          </ul>
	        			</div>
	      			</div>
	    		</section>
	  		</div>
		</div>
	</body>
</html>