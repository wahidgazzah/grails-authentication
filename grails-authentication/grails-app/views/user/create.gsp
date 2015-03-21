<head>
	
	<meta name="layout" content="main" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
	<title><g:message code="default.create.label" args="[entityName]"/></title>
	
<g:javascript library='jquery' plugin='jquery' />
<jqui:resources />
<link rel="stylesheet" media="screen" href="${resource(dir:'css/smoothness',file:'jquery-ui-1.8.2.custom.css',plugin:'spring-security-ui')}"/>
<g:javascript src='spring-security-ui.js'/>

</head>

<body>

	<div id="body-contenu">
		<div id="contenu">
        <div id="formulaire">
        <fieldset>   
            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${user}">
            <div class="errors">
                <g:renderErrors bean="${user}" as="list" />
            </div>
            </g:hasErrors>
            
            <div id="titre-page">Ajouter un utilisateur</div>
            
<g:form action="save" name='userCreateForm'>


		<table class="line">
		<tbody>

			<s2ui:textFieldRow name='username' labelCode='user.username.label' bean="${user}"
                            labelCodeDefault='Username' value="${user?.username}"/>

			<s2ui:passwordFieldRow name='password' labelCode='user.password.label' bean="${user}"
                                labelCodeDefault='Password' value="${user?.password}"/>
			
			<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="prenom"><g:message code="user.prenom.label" default="Prenom" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'prenom', 'errors')}">
                                    <g:textField name="prenom" value="${user?.prenom}" />
                                </td>
            </tr>
			
			<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nom"><g:message code="user.nom.label" default="Nom" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'nom', 'errors')}">
                                    <g:textField name="nom" value="${user?.nom}" />
                                </td>
            </tr>
			
				  <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sexe"><g:message code="user.sexe.label" default="Sexe" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'sexe', 'errors')}">
                                    <g:select name="sexe" from="${user.constraints.sexe.inList}" value="${user?.sexe}" valueMessagePrefix="user.sexe"  />
                                </td>
                            </tr>
			
			<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="age"><g:message code="user.age.label" default="Age" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'age', 'errors')}">
                                    <g:textField name="age" value="${user?.age}" />
                                </td>
            </tr>
			
			  <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="niveau"><g:message code="user.niveau.label" default="Niveau d'etude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'niveau', 'errors')}">
                                    <g:select name="niveau" from="${user.constraints.niveau.inList}" value="${user?.niveau}" valueMessagePrefix="user.niveau"  />
                                </td>
                            </tr>
            
            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="user.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${user?.email}" />
                                </td>
            </tr>
            
            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ville"><g:message code="user.ville.label" default="Ville" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'ville', 'errors')}">
                                    <g:textField name="ville" value="${user?.ville}" />
                                </td>
            </tr>
            
            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pays"><g:message code="user.pays.label" default="Pays" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: user, field: 'pays', 'errors')}">
                                    <g:textField name="pays" value="${user?.pays}" />
                                </td>
            </tr>
			<s2ui:checkboxRow name='enabled' labelCode='user.enabled.label' bean="${user}"
                           labelCodeDefault='Enabled' value="${user?.enabled}"/>

			<s2ui:checkboxRow name='accountExpired' labelCode='user.accountExpired.label' bean="${user}"
                           labelCodeDefault='Account Expired' value="${user?.accountExpired}"/>

			<s2ui:checkboxRow name='accountLocked' labelCode='user.accountLocked.label' bean="${user}"
                           labelCodeDefault='Account Locked' value="${user?.accountLocked}"/>

			<s2ui:checkboxRow name='passwordExpired' labelCode='user.passwordExpired.label' bean="${user}"
                           labelCodeDefault='Password Expired' value="${user?.passwordExpired}"/>
		</tbody>
		</table>
		
		<table width="40%" align="left">
		<th><label>Roles</label></th>
		<g:each var="auth" in="${authorityList}">
			<tr>
			<td><g:checkBox name="${auth.authority}" /></td>
			<td>${auth.authority.encodeAsHTML()}</td>
			</tr>
		</g:each>
		</table>
		
 </fieldset>

<div id="footer-form">
<div id="btn-confirm">
<input type="reset" class="btn-reset" value="Annuler"/>
<g:submitButton name="create" class="btn-save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
</div>
</div>

</g:form>

</div>
</div>
</div>



<script>
$(document).ready(function() {
	$('#username').focus();
	<s2ui:initCheckboxes/>
});
</script>

</body>
