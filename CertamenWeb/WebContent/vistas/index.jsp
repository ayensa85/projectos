<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<meta charset="UTF-8">
	<title>El certamen</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/certamen.css" />"/>
</head>


<body>

	<header>
		<div id="contenido_header">
			<div id="logo">
				<a href='<c:url value="/" />'><img src="<c:url value="/resources/images/logocertamen.png" /> "alt="logotipo de la empresa"></a>
			</div><!--fin del logo-->
		</div><!-- fin del div contenido_header -->
	</header>
	<%@include file="common/menu.jsp" %>
	<section id="galeria">
		<div id="contenido_galeria">
			<div id="slide_galeria">
				<ul>
					<li><img src="<c:url value="/resources/images/finalistas.jpg"/>" alt="finalistas"/></li>
				</ul>
			</div>	<!--fin del div slide galeria	-->
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
		<%@ include file="common/footer.jsp" %>
</body>
</html>