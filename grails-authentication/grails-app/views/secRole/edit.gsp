<%@ page import="com.dihaw.usermanager.entity.SecRole" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secRole.edit" default="Edit SecRole" /></title>
    </head>
    <body>
 		
 		<div id="body-contenu">
		<div id="contenu">
        <div id="formulaire">
        <fieldset>
             
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${secRoleInstance}">
            <div class="errors">
                <g:renderErrors bean="${secRoleInstance}" as="list" />
            </div>
            </g:hasErrors>
            
            <div id="titre-page">Editer un R&#244;le</div>
            <g:form method="post" >
                <g:hiddenField name="id" value="${secRoleInstance?.id}" />
                <g:hiddenField name="version" value="${secRoleInstance?.version}" />
               
                    <table class=line>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="authority"><g:message code="secRole.authority" default="R&ocirc;le" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secRoleInstance, field: 'authority', 'errors')}">
                                    <g:textField name="authority" value="${fieldValue(bean: secRoleInstance, field: 'authority')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="secRole.description" default="Description" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secRoleInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${fieldValue(bean: secRoleInstance, field: 'description')}" />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                                   </fieldset>

<div id="footer-form">
<div id="btn-confirm">
          
        
<input type="reset" class="btn-reset" value="Annuler"/>
<g:actionSubmit class="btn-save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
<g:actionSubmit class="btn-save" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

</div>
</div>
</g:form>
</div><!--fin formulaire!-->
</div><!--fin contenu!-->
           
    </body>
</html>
