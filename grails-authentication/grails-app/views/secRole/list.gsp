<%@ page import="com.dihaw.usermanager.entity.SecRole" %>
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secRole.list" default="SecRole List" /></title>
    </head>
    <body>
		<div id="body-contenu">
			<div id="contenu">
				<div id="titre-page">Liste des roles</div>
				<div id="add"><g:link controller="secRole" class="btn-save" action="create">Ajouter un Role</g:link></div>
            
				<div id="tableau-editeur"> 
					<table>
		 				<thead>
							<tr>
			     				<g:sortableColumn class="col-nom" property="authority" title="Role" titleKey="secRole.authority" />
		                   	    <g:sortableColumn class="col-email" property="description" title="Description" titleKey="secRole.description" />
		                        <th class="col-action">Action</th>
		            		</tr>
		          		</thead>
		      			<tbody>
		                    <g:each in="${secRoleInstanceList}" status="i" var="secRoleInstance">
		                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
		                            <td>${fieldValue(bean: secRoleInstance, field: "authority")}</td>
		                            <td>${fieldValue(bean: secRoleInstance, field: "description")}</td>
		                        	<td class="col-action">
			         					<g:link action="edit" id="${secRoleInstance.id}"> 
			                 				<img src="${resource(dir:'images',file:'edit.png')}" alt="edit" border="0" />
										</g:link>
				            			<g:remoteLink action="delete" id="${secRoleInstance.id}" update="[success:'message',failure:'error']"> 
				                        	<img src="${resource(dir:'images',file:'delete.png')}" alt="delete"/>
										 </g:remoteLink>
			         					<g:link action="show" id="${secRoleInstance.id}"> 
			                        		<img src="${resource(dir:'images',file:'view.png')}" alt="view"/>
										</g:link>
									</td>
		                        </tr>
		                    </g:each>
		         		</tbody>
		     		</table>
				</div>
           		<div id="bot-tab"> 
            		<div class="paginateButtons">
                		<g:paginate total="${secRoleInstanceTotal}" />
            		</div>
        		</div>
         	</div> 
         </div>
	</body>
</html>
