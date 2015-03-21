<%@ page import="org.codehaus.groovy.grails.plugins.PluginManagerHolder" %>

<sec:ifNotSwitched>
	<sec:ifAllGranted roles='ROLE_SWITCH_USER'>
		<g:if test='${user.username}'>
			<g:set var='canRunAs' value='${true}'/>
		</g:if>
	</sec:ifAllGranted>
</sec:ifNotSwitched>

<head>
	<meta name="layout" content="main" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
	<title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
	<div id="body-contenu">
		<div id="contenu">
			<div id="formulaire">
				<div id="titre-page">Editer un utilisateur</div>
				<g:form action="update" name='userEditForm' class="button-style">
					<g:hiddenField name="id" value="${user?.id}"/>
					<g:hiddenField name="version" value="${user?.version}"/>
					<%
						def tabData = []
						tabData << [name: 'userinfo', icon: 'icon_user', messageCode: 'spring.security.ui.user.info']
						tabData << [name: 'roles',    icon: 'icon_role', messageCode: 'spring.security.ui.user.roles']
						boolean isOpenId = PluginManagerHolder.pluginManager.hasGrailsPlugin('springSecurityOpenid')
						if (isOpenId) {
							tabData << [name: 'openIds', icon: 'icon_role', messageCode: 'spring.security.ui.user.openIds']
						}
					%>
					<div class="section">
						<div class="edit-user">
							<ul>
								<li class="huge">
									<s2ui:textFieldRow name='username' labelCode='user.username.label' bean="${user}" labelCodeDefault='Username' value="${user?.username}"/>
								</li>
								<li class="huge">
									<s2ui:passwordFieldRow name='password' labelCode='user.password.label' bean="${user}" labelCodeDefault='Password' value="${user?.password}"/>
								</li>
								<li class="huge">
									<label for="prenom"><g:message code="user.prenom.label" default="Prenom" /></label>
									<g:textField name="prenom" value="${user?.prenom}" />
								</li>
								<li class="huge">
									<label for="nom"><g:message code="user.nom.label" default="Nom" /></label>
							 		<g:textField name="nom" value="${user?.nom}" />
							 	</li>
								<li class="huge">
									<label for="sexe"><g:message code="user.sexe.label" default="Sexe" /></label>
									<g:select name="sexe" from="${user.constraints.sexe.inList}" value="${user?.sexe}" valueMessagePrefix="user.sexe"  />
								</li>
								<li class="huge">
									<label for="age"><g:message code="user.age.label" default="Age" /></label>
									<g:textField name="age" value="${user?.age}" />
								</li>
								<li class="huge">
							        <label for="niveau"><g:message code="user.niveau.label" default="Niveau d'etude" /></label>
							        <g:select name="niveau" from="${user.constraints.niveau.inList}" value="${user?.niveau}" valueMessagePrefix="user.niveau"  />
								</li>
								<li class="huge">
									<label for="email"><g:message code="user.email.label" default="Email" /></label>
									<g:textField name="email" value="${user?.email}" />
								</li>
								<li class="huge">
									<label for="ville"><g:message code="user.ville.label" default="Ville" /></label>
									<g:textField name="ville" value="${user?.ville}" />
								</li>
								<li class="huge">
									<label for="pays"><g:message code="user.pays.label" default="Pays" /></label>
									<g:textField name="pays" value="${user?.pays}" />
								</li>
								<li class="huge">
									<s2ui:checkboxRow name='enabled' labelCode='user.enabled.label' bean="${user}" labelCodeDefault='Enabled' value="${user?.enabled}"/>
								</li>
								<li class="huge">
									<s2ui:checkboxRow name='accountExpired' labelCode='user.accountExpired.label' bean="${user}" labelCodeDefault='Account Expired' value="${user?.accountExpired}"/>
								</li>
								<li class="huge">
									<s2ui:checkboxRow name='accountLocked' labelCode='user.accountLocked.label' bean="${user}" labelCodeDefault='Account Locked' value="${user?.accountLocked}"/>
								</li>
								<li class="huge">
									<s2ui:checkboxRow name='passwordExpired' labelCode='user.passwordExpired.label' bean="${user}" labelCodeDefault='Password Expired' value="${user?.passwordExpired}"/>
								</li>
							</ul>
						</div>
					</div>
					<table width="40%" align="left">
						<th><label>Roles</label></th>
						<g:each var="entry" in="${roleMap}">
							<tr>
								<td>
									<g:checkBox name="${entry.key.authority}" value="${entry.value}"/>
								</td>
								<td>	
									${entry.key.authority.encodeAsHTML()}
								</td>
							</tr>
						</g:each>
					</table>
				</div>
				<div id="footer-form">
					<div id="btn-confirm">
						<input type="reset" class="btn-save" value="Annuler"/>
						<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" class="btn-save" />
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" class="btn-reset"  onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
					</div>
				</div>
			</g:form>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#username').focus();
		
			<s2ui:initCheckboxes/>
		
			$("#runAsButton").button();
			$('#runAsButton').bind('click', function() {
			   document.forms.runAsForm.submit();
			});
		});
	</script>
</body>
