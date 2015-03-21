
<%@ page import="com.dihaw.usermanager.entity.SecRole" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secRole.create" default="Create SecRole" /></title>
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
            <div id="titre-page">Ajouter un Role</div>
            
            
            
            
            <g:form action="save" method="post" >
                    <table class="line">
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
			<g:submitButton name="create" class="btn-save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</div>
			</div>
			
            </g:form>

</div><!--fin formulaire!-->
</div><!--fin contenu!-->
    </body>
</html>
