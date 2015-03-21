<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Accueil - User Manager</title>
	
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
			<li class="selected"><a href="#"><span>About</span></a></li>
		</ul>
	</div>
	<div class="main">
		<div style="margin:30px 10px 0;">
		<div class="about">
			<div class="about-title">
				<h3>About this project</h3>
			</div>
			<p>	
				This project developed By <a href="http://blog.dihaw.com" target="_blank">Wahid Gazzah</a>. 
				The source code is available in <a href="https://github.com/wahidgazzah/grails-authentication" target="_blank">Github</a>.
			</p>
			
			<div class="about-title">
				<h3>Technology used</h3>
			</div>
			<ul>
				<li><strong>Grails</strong></li>
				<li><strong>spring security</strong></li>
			</ul>
			</br></br> 
			<div class="about-title">
				<h3>Data Base</h3>
			</div>
			<ul>
				<li>Create a <strong>usermanagerdb </strong> mysql database within <strong>wamp</strong> server application</li>
				<li>Import the <strong>database-script.sql</strong> in your <strong>userdb</strong> database</li>
			</ul>
			</br></br> 
			<div class="about-title">
				<h3>Import the Git project using STS IDE</h3>
			</div>
			<ul>
				<li>Go to the File menu and choose Import.</li>
				<li>Surf in the Import menu to Git and select Projects from Git.</li>
				<li>Choose URI at this point...</li>
				<li>After import, click the right mouse button on your project, Configure -> Convert to Maven Project.</li>
				<li>To run the project, use "grails run-app" cmd.</li>
				<li>Go to http://localhost:9080/grails-authentication</li>
			</ul>
			</br></br>  
		</div>
		</div>
	</div>


	<hr />
	<div class="footer">
		<a href="http://team.dihaw.com" target="_blank">dihaw team ©</a>
	</div>
</div>	
	

</html>