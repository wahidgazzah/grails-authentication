
<%@ page import="com.dihaw.usermanager.entity.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:javascript library="prototype" />
        
        <g:set var="entityName" value="${message(code: 'secUser.label', default: 'SecUser')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <resource:autoComplete skin="default" />
        <export:resource />
        <resource:tabView />
    </head>
    <body>
    


<!--contenu!-->
<div id="body-contenu">
<div id="contenu">
<div id="titre-page">Liste des Utilisateurs</div>
<div id="add"><g:link class="btn-save" action="create"><g:message code="Ajouter un utilisateur" /></g:link></div>

<div id="toolbare">
<div id="menu-toolbare"></div>
<div id="filtre"></div>

<div id="recherche">
<img src="../static/images/search.png" title="recherche" />
<richui:autoComplete name="searchperson" title="This is an auto complete field" action="${createLinkTo('dir': 'user/searchAJAX')}"  
              onItemSelect="document.location.href = '${createLinkTo(dir: 'user/show')}/' + id;"/> 
</div>
</div>

			<div id="tableau">
			    <table>
                    <thead>
                        <tr>
                        	 
                            <g:sortableColumn class="col-prenom" property="username" title="${message(code: 'secUser.username.label', default: 'Username')}" />
                        
                            <g:sortableColumn class="col-prenom" property="prenom"  title="${message(code: 'secUser.prenom.label', default: 'Prenom')}" />
                        
                          	<g:sortableColumn class="col-nom" property="nom" title="${message(code: 'secUser.nom.label', default: 'Nom')}" />
                        
                        	<g:sortableColumn class="col-sexe" property="sexe" title="${message(code: 'secUser.sexe.label', default: 'Sexe')}" />
                        
                          	<g:sortableColumn class="col-age" property="age" title="${message(code: 'secUser.age.label', default: 'Age')}" />
                        
                       		<g:sortableColumn class="col-email" property="email" title="${message(code: 'secUser.email.label', default: 'Email')}" />
                        	
                        	<g:sortableColumn class="col-niveau" property="niveau" title="${message(code: 'secUser.niveau.label', default: 'Niveau')}" />
                        	
                        	<g:sortableColumn class="col-ville" property="ville" title="${message(code: 'secUser.ville.label', default: 'Ville')}" />
                        	
                        	<g:sortableColumn class="col-pays" property="pays" title="${message(code: 'secUser.pays.label', default: 'Pays')}" />
                        	
                        	<th class="col-action">Action</th>
                        	
                	    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><center>${fieldValue(bean: userInstance, field: "username")}</center></td>
                        
                            <td>${fieldValue(bean: userInstance, field: "prenom")}</td>
                        
                            <td>${fieldValue(bean: userInstance, field: "nom")}</td>
                            
                            <td>${fieldValue(bean: userInstance, field: "sexe")}</td>
                            
                            <td>${fieldValue(bean: userInstance, field: "age")}</td>
                            
                            <td>${fieldValue(bean: userInstance, field: "email")}</td>
                            
                            <td>${fieldValue(bean: userInstance, field: "niveau")}</td>
                            
                            <td>${fieldValue(bean: userInstance, field: "ville")}</td>
                            
                            <td>${fieldValue(bean: userInstance, field: "pays")}</td>
                            
                            <td>
         					<g:link action="edit" id="${userInstance.id}"> 
                        		<img src="${resource(dir:'static',file:'images/edit.png')}" alt="edit" border="0"/>
							</g:link>
							
	                          <g:remoteLink action="delete" id="${userInstance.id}" update="[success:'message',failure:'error']"> 
	                        	<img src="${resource(dir:'static',file:'images/delete.png')}" alt="delete" border="0"/>
							 </g:remoteLink>
                        
                        	
         					<g:link action="show" id="${userInstance.id}"> 
                        		<img src="${resource(dir:'static',file:'images/view.png')}" alt="edit" border="0" />
							</g:link>
							
							
							</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
           
            </div>
           
           <div id="bot-tab"> 
            <div class="paginateButtons">
              <g:paginate total="${userInstanceTotal}" />
          	</div>
          	<export:formats formats="['csv', 'excel', 'ods', 'pdf', 'xml']" />
			 
          	</div>
			 
        </div>
    </body>
</html>
