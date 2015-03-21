
<%@ page import="com.dihaw.usermanager.entity.SecRole" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secRole.show" default="Show SecRole" /></title>
    </head>
    <body>

 		<div id="body-contenu">
		<div id="contenu">
        <div id="formulaire">
        <fieldset>
           
            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            
               <div id="titre-page">Infos Role</div>
                <table class="line">
                        <tbody>
                         
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secRole.authority" default="Role" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secRoleInstance, field: "authority")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secRole.description" default="Description" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secRoleInstance, field: "description")}</td>
                                
                            </tr>
                            
                        </tbody>
                    </table>
              </fieldset>

<div id="footer-form">
<div id="btn-confirm">
          
<g:form>
              	<g:hiddenField name="id" value="${secRoleInstance?.id}" />
                 <span class="button"><g:actionSubmit class="btn-save" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                 <span class="button"><g:actionSubmit class="btn-save" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>                
</g:form>        

</div>
</div>

</div>
</div><!--fin formulaire!-->
</div><!--fin contenu!-->
</body>
</html>
