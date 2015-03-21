
<head>
<title><g:message code='spring.security.ui.forgotPassword.title'/></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        
        <link rel="stylesheet" href="${resource(dir:'css',file:'stylesheet.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="application" />
  
 </head>

<body id="login-bg"> 
<div id="login-holder">

	<div class="logo">
		<img src="${resource(dir:'images',file:'logo-wapiste.png')}" alt="logo" />
	</div>
	
	<g:if test='${emailSent}'>
	<br/>
	<div style="color: white;"> <g:message code='spring.security.ui.forgotPassword.sent'/></div>
	</g:if>

	<g:else>

	
	<!--
	<br/>
	<h4><g:message code='spring.security.ui.forgotPassword.description'/></h4>
	<br/>
	-->
	
	<div id="loginbox">
    <div id="head-box">Forgot your password ?</div>
	
	<div id="login-inner">
	
	<g:form action='forgotPassword' name="forgotPasswordForm" autocomplete='off' id='loginForm'>
	
		<table border="0" cellpadding="0" cellspacing="0" style="font-family:PTSansCaptionRegular, Arial, sans-serif;  font-size:0.8em; width:200px;">
		
		 <tr>
            <th style="padding:0 0 15px; font-weight:bold;">Please send us your username and we'll reset your password.</th>
        </tr>
		<tr>
			<th><g:message code='spring.security.ui.forgotPassword.username'/></th>
        </tr>
        <tr>
			<td><g:textField name="username" class="login-inp"/></td>
		</tr>
		
		
		<tr>
			<td><input type="button" class="btn-submit" value="Send" /></td>
		</tr>
        <tr>
            <td class="liens">
            <g:link controller="login" action="auth">Back to login</g:link>
            </td>
        </tr>
	</table>
	
	<!--
	<s2ui:submitButton elementId='reset' form='forgotPasswordForm' messageCode='spring.security.ui.forgotPassword.submit'/>
	
	
	<input type="submit" value="Envoyer" style="border:0px solid #a80000; border-radius:10px; color:black; font-size:0.8em; font-weight:bold; margin-top:7px; padding:5px 9px; float:right;background: #dddddd;
background: #f2f5f6;" />
	-->
	
	</g:form>
	</div></div>
	
	</g:else>

	
	</div>

<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>

</body>
