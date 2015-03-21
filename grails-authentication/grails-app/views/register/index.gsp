<head>
	<title><g:message code='spring.security.ui.register.title'/></title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'stylesheet.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <g:javascript library="application" />
    <g:javascript src="jquery.js"/>
    <g:javascript src="custom_jquery.js"/>
    <g:javascript src="jquery.pngFix.pack.js"/>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
 <g:javascript src="jquery.pngFix.pack.js"/>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
</head>


<body id="login-bg"> 
<div id="msg-confirm">
Whoops! We didn't recognise your mail or password. Please try again.
<span class="close">&nbsp;</span>
</div>

<!-- page center -->
<div id="login-holder">

	<!-- logo -->
	<div class="logo">
		<img src="../images/logo-wapiste.png" alt="logo" />
	</div>
	<!-- end logo -->
	
	<div id="inscritbox">
    <div id="head-box">Inscription</div>
	<div id="login-inner">

	<g:form action='register' name='registerForm'>

	<g:if test='${emailSent}'>
	<br/>
	<div style="style="font-family:PTSansCaptionRegular, Arial, sans-serif;  font-size:0.6em; width:200px;"> <g:message code='spring.security.ui.register.sent'/> </div>
	</g:if>
	<g:else>

	<br/>

	<table border="0" cellpadding="0" cellspacing="0" style="font-family:PTSansCaptionRegular, Arial, sans-serif;  font-size:0.8em; width:200px;">
		
		<tr>
		<th>Username</th>
		</tr>
		
		<tr>
		<td><input id="username" class="login-inp" type="text" value="" name="username"></td>
		</tr>
		
		<tr>
		<th>Email</th>
		</tr>
		
		<tr>
		<td><input id="email" class="login-inp" type="text" value="" name="email"></td>
		</tr>
		
		<tr>
		<th>Password</th>
		</tr>
		
		<tr>
		<td><input id="password" class="login-inp" type="password" value="" name="password"></td>
		</tr>
		
		<tr>
		<th>Confirm Password</th>
		</tr>
		<tr>
		<td><input id="password2" class="login-inp" type="password" size="40" value="" name="password2"></td>
		</tr>
		<tr>
		<td></td>
		</tr>
		<tr>
			<td>
			<input id="create_submit" class="btn-submit" type="submit" value="Submit">
			<input type="button" class="btn-reset" value="Annuler"/></td>
        </tr>
        <tr>
        <td class="liens">
        <g:link controller="login" action="auth">Back to login</g:link>
        </td>
        </tr>
        
	</table>
	 	</g:else>

</g:form>

</br></br>
</div>
<div class="clear"></div>
</div>
	


<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>

</body>
