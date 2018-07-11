<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>El certamen</title>
	<link rel="stylesheet" href="<c:url value = "/resources/css/certamen.css"/>" />
</head>
<body>
	<header>
		<div id="contenido_header">
			<div id="logo">
				<a href="<c:url value="/"/> "><img src="<c:url value = "/resources/images/logocertamen.png"/>" alt="logotipo de la empresa"></a>
			</div><!--fin del logo-->
		</div><!-- fin del div contenido_header -->
	</header>
	<%@include file="common/menu.jsp" %>	
	<section id="galeria">
		<div id="contenido-iframe">
			<div id="slide_galeria">
				<p>
			El Certamen Villa de San Adri&aacute;n es una actividad sin &aacute;nimo de lucro, organizada por los jo&acute;venes de la asociaci&ooacute;n juvenil el tajador que trabajan desinteresadamente con el objetivo de agitar la escena cultural de esta villa y haciendo un esfuerzo por que esta actividad tenga repercusi&oacute;n en el &aacute;mbito nacional.
			año tras año los j&oacute;venes de la A.J. el tajador se ponen en marcha para dar vida a esta actividad que se compone de tres partes: la fase concurso, los grupos invitados y las actividades en el pueblo.
			<br><br>
			</p>
				<iframe id="reproductor" margin-left = "3%" width="600" height="366" src="https://www.youtube.com/embed/YzJR2EJ2unk" frameborder="0" allowfullscreen></iframe>
			</div>
		</div> <!--fin del divcontenido  galeria	-->
	</section>	<!--fin de galeria	-->
	<div class="nf"></div>
	<section id="contenido">
		<div id="contenido_contenido">
			<article id="post">
				
			</aside>
		</div> <!-- fin del div con contenido -->
	</section> <!-- fin del section contenido -->
	<div class="nf">
	</div>
	<section id="prefooter">
		<div id="contenido_prefooter">
			<section id="estado">
				<div id="redessociales">
					
				</div> <!-- fin de div de clientes -->
				
			</section><!-- fin del section state -->
		</div> <!-- fin del div contenido_prefooter -->
	</section><!-- fin del section prefooter -->
	<%@include file="common/footer.jsp" %>	
</body>
</html>