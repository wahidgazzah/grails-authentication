<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Accueil - Jeux Concours Mocobu</title> 
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<!-- CSS *** -->
	
	<link rel="stylesheet" href="${resource(dir:'css',file:'layout.css')}" />
		<link rel="stylesheet" href="${resource(dir:'css',file:'uniform.default.css')}" />
	
	<!--[if lte IE 7]>
		<link rel="stylesheet" type="text/css" href="css/layout-ie7.css" />
	<![endif]-->
	<!-- JS *** -->
	<g:javascript src="script.js" />
<g:javascript src="validation.js" />
<g:javascript src="fabtabulous.js" />
<g:javascript src="prototype/prototype.js" />
<g:javascript src="jquery.js" />
<g:javascript src="application.js" />
	<!-- -->
	
	
	
</head>
<body>
	<div id="wrapper">
		<!-- Header -->
		<div id="header">
			<div id="logo">
				<img src="${resource(dir: 'images', file: 'logomocobu.png')}" alt="logo"/>
			</div>
			<ul id="mainMenu">
				<li class="active"><g:link class="accLink"  controller="quizz" action="showGame" >Accueil</g:link>
				</li>
				<li><g:link class="parLink"  controller="quizz" action="showQuiz" id="1" onclick="createPart(${jeuxInstance?.id});">Participer</g:link>
				</li>
				<li><g:link class="regLink"  controller="quizz" action="reglement">Réglement</g:link>
				</li>
				<li><g:link class="conLink"  controller="contact" action="create">Contact</g:link></li>
			</ul>
		</div>
		<!-- Content -->
		<div id="content">
			<div class="accueilContent">
				<h1>Jouez & Gagnez</h1>
				<strong class="jeuDate">Du 1er au 30 Septembre :</strong>
				<ul class="nu jeuDetails">
					<li>- Une remise de <strong>20%*</strong></li>
					<li>- Votre application <br />iPad <strong class="bleu">gratuite</strong> ! **</li>
				</ul>
				<ul class="nu jeuInfo">
					<li class="row1"><span>* sur toutes les applications de M-Commerce commandées pour tous les participants</span></li>
					<li class="row2"><span>** la réalisation de l'application iPad de M-Commerce gratuitement sur tirage au sort</span></li>
				</ul>
			</div>
		</div>
		<!-- Footer -->
		<div id="footer">
			<div class="colLeft"><a href="http://ultimatemobileagency.com" target="_blank"><img src="${resource(dir: 'images', file: 'logouma.png')}" alt=""/></a></div>
			<div class="colLeft navFooter"><a href="#">Conception et réalisation Ultimate Mobile Agency</a> | <a href="../quizz/mentionsLegales">Mentions Légales</a></div>
			<div class="colRight">
				<ul class="shareMenu">
					<li><a class="FbIcon" href="https://www.facebook.com/pages/Ultimate-Mobile-Agency/219563948125026" target="_blank">Facebook</a></li>
					<li><a class="TwiterIcon" href="http://twitter.com/jaleleachour" target="_blank">Twiter</a></li>
					<li><a class="GoogleIcon" href="https://plus.google.com/u/0/118369106507649151477/posts" target="_blank">Google+</a></li>
					<li><a class="InIcon" href="http://fr.linkedin.com/in/achourjalele" target="_blank">LinkIn</a></li>
					<li><a class="ViadeoIcon" href="http://fr.viadeo.com/fr/profile/jaleleddine.achour" target="_blank">Viadeo</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>