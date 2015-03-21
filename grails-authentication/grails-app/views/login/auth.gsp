<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Login - User Manager</title>
		<link rel="stylesheet" href="${resource(dir:'static',file:'css/style.css')}" />
		<link rel="stylesheet" href="${resource(dir:'static',file:'font/font-awesome/css/font-awesome.min.css')}" />
	</head>
	<div class="container" style="border: #C1C1C1 solid 1px; border-radius:10px; margin: 30px auto;">
		<div class="header">
			<div id="logo"></div>
			<div id="home-title">
				<h3>Grails User Manager</h3>
			</div>
			<hr>	
		</div>
		<div class="menu">
			<ul>
				<li><g:link controller="home" action="index"><span>Home</span></g:link></li>
				<li><g:link controller="about" action="index"><span>About</span></g:link></li>
			</ul>
		</div>
		<div class="main">
			<div style="margin:30px 10px 0">
				<div class="title">
					<h3>Login</h3>
				</div>
				
				<div class="section">
					<form action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
						<div class="user">
							<ul>
								<li class="huge">
									<g:message code='spring.security.ui.login.username'/>
									<input name="j_username" id="username" class="login-inp" />
								</li>
								<li class="huge">
									<g:message code='spring.security.ui.login.password'/>
									<input type="password" name="j_password" id="password" class="login-inp" />
								</li>
								<%-->li class="huge">
									<input type="checkbox" name="${rememberMeParameter}" id="remember_me" checked="checked" class="checkbox-size"/>
								<label for="login-check"><g:message code='spring.security.ui.login.rememberme'/></label>
								</li --%>
							</ul>
						</div>
						<ul>
							<li class="huge-btn">
								<input type="submit" class="btn" value="Login"/>
							</li>
						</ul>
					</form>
				</div>	
					
					
			</div>
		</div>
		<hr/>
		<div class="footer">
			<a href="http://team.dihaw.com" target="_blank">dihaw team ©</a>
		</div>
	</div>	
</html>
