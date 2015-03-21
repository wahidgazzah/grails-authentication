
<%@ page import="com.dihaw.usermanager.entity.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        
        <g:set var="entityName" value="${message(code: 'userInstance.label', default: 'SecUser')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
              

 		
 		
 		<div id="body-contenu">
		<div id="contenu">
        <div id="formulaire">
        <fieldset>
            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
		
				<div id="titre-page">Infos Utilisateur</div>  
				
				
				<div class="section" style="margin: 0 200px 22px">
					<div class="edit-user">
						<ul>
							<li class="huge">
								<span><g:message code="userInstance.prenom.label" default="Prenom: " /></span>
								${fieldValue(bean: userInstance, field: "prenom")}
							</li>
							<li class="huge">
								<g:message code="userInstance.nom.label" default="Nom: " />
								${fieldValue(bean: userInstance, field: "nom")}
							</li>
							<li class="huge">
                            	<g:message code="userInstance.username.label" default="Username: "/>
                           	 	${fieldValue(bean: userInstance, field: "username")}
                        	</li>
	                        <li class="huge">
	                            <g:message code="userInstance.sexe.label" default="Sexe: "/>
	                            ${fieldValue(bean: userInstance, field: "sexe")}
	                        </li>
	                        <li class="huge">
	                            <g:message code="userInstance.age.label" default="Age: "/>
	                            ${fieldValue(bean: userInstance, field: "age")}
	                        </li>
	                        <li class="huge">
	                            <g:message code="userInstance.email.label" default="Email: "/>
	                            ${fieldValue(bean: userInstance, field: "email")}
	                        </li>
	                         <li class="huge">
	                            <g:message code="userInstance.niveau.label" default="Niveau: "/>
	                            ${fieldValue(bean: userInstance, field: "niveau")}
	                        </li>
	                    	 <li class="huge">
	                            <g:message code="userInstance.ville.label" default="Ville: "/>
	                            ${fieldValue(bean: userInstance, field: "ville")}
	                        </li>
	                         <li class="huge">
	                            <g:message code="userInstance.pays.label" default="Pays: "/>
	                            ${fieldValue(bean: userInstance, field: "pays")}
	                        </li>
						</ul>
					</div>
				</div>
             </fieldset>
           
<div id="footer-form">
<div id="btn-confirm">
          
<g:form>
                 <g:hiddenField name="id" value="${userInstance?.id}" />
                 <span class="button"><g:actionSubmit class="btn-save" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                 <span class="button"><g:actionSubmit class="btn-reset" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>                
</g:form>        
</div>
</div>

</div>
</div><!--fin formulaire!-->
</div><!--fin contenu!-->
</body>
</html>