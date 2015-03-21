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
			<div class="btn-div" style="margin: -45px 20px;">
				<a href="login" class="btn">Login</a>
			</div>
			<hr>	
		</div>
		<div class="menu">
			<ul>
				<li class="selected"><a href="#"><span>Home</span></a></li>
				<li><g:link controller="about" action="index"><span>About</span></g:link></li>
			</ul>
		</div>
		<div class="main">
			<div style="margin:30px 10px 0;">
				<div class="title">
					<h3>Welcome to User Manager Grails project</h3>
					<p>	
						This project developed By <a href="http://blog.dihaw.com" target="_blank">Wahid Gazzah</a>. 
						The source code is available in <a href="https://github.com/wahidgazzah/grails-authentication" target="_blank">Github</a>.
					</p>
				</div>
			</div>
		</div>
		<hr />
		<div class="footer">
			<a href="http://team.dihaw.com" target="_blank">dihaw team ©</a>
		</div>
	</div>	
</html>
