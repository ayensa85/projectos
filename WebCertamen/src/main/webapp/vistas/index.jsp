<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title>El certamen</title>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>El certamen</title>

<!-- Bootstrap core CSS -->
<!-- Latest compiled and minified CSS -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="<c:url value="/css/certamen.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">


</head>

<body>
	<!-- PArte que mueve los componentes javasript de boostrap -->
	"
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			$("#noticias3").hide();
			$("#noticias2").hide();
			$("#cargarNoticias").click(function() {
				if ($("#noticias2").is(":visible")) {
					$("#noticias3").show();
				} else {
					$("#noticias2").show();
				}
			});

		});
	</script>

	<%@include file="common/menu.jsp"%>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<a href="${pageContext.request.contextPath}/certamen/horarios"><img
					class="first-slide img-responsive"
					src="<c:url value="/images/salar.jpg"/>" alt="First slide"></a>
				<div class="container">
					<div class="carousel-caption">
						<h1>
							<spring:message code="carrousel.horarios" />
						</h1>
					</div>
				</div>
			</div>
			<div class="item">
				<a href="${pageContext.request.contextPath}/certamen/asociacion"><img
					class="second-slide img-responsive"
					src="<c:url value="/images/tajadores2.jpg"/>" alt="Second slide"></a>
				<div class="container">
					<div class="carousel-caption">
						<h1>
							<spring:message code="carrousel.tajador" />
						</h1>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide img-responsive"
					src="<c:url value="/images/fondo3.jpg"/>" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>
							<spring:message code="carrousel.artistas" />
						</h1>
					</div>
				</div>
			</div>
			<div class="item">
				<a href="${pageContext.request.contextPath}/certamen/bases"><img class="third-slide img-responsive"
					src="<c:url value="/images/mandatumaqueta.jpg"/>" alt="Second slide"></a>
				<div class="container">
					<div class="carousel-caption">
						<h1>
							<spring:message code="carrousel.participa" />
						</h1>
					</div>
				</div>
			</div>
			
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<hr class="featurette divider" />
		<div class="jumbotron marketing">
			<h1>
				<spring:message code="noticias.titulo" />
			</h1>


			<div class="row" id="noticias">

				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>

					<h2>
						<spring:message code="noticias.primera.titulo" />
					</h2>
					<p>
						<spring:message code="noticias.primera.cuerpo" />
					</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>
					<h2>Titulo h2</h2>
					<p>prueba de texto</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>
					<h2>Titulo h2</h2>
					<p>prueba de texto</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
			</div>


			<div class="row" id="noticias2">

				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>

					<h2>
						<spring:message code="noticias.primera.titulo" />
					</h2>
					<p>
						<spring:message code="noticias.primera.cuerpo" />
					</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>
					<h2>Titulo h2</h2>
					<p>prueba de texto</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>
					<h2>Titulo h2</h2>
					<p>prueba de texto</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
			</div>
			<div class="row" id="noticias3">

				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>

					<h2>
						<spring:message code="noticias.primera.titulo" />
					</h2>
					<p>
						<spring:message code="noticias.primera.cuerpo" />
					</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>
					<h2>Titulo h2</h2>
					<p>prueba de texto</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
				<div class="col-lg-4">
					<div class="circulo">
						<img src="<c:url value="/images/cabecero.png"/>" alt="cabecero">
					</div>
					<h2>Titulo h2</h2>
					<p>prueba de texto</p>
					<p>
						<a class="btn btn-default" href="#">Boton</a>
					</p>
				</div>
			</div>



			<div id="loadMore" style="">
				<p>

<!-- 					<a class="btn btn-primary btn-lg" href="#" role="button" -->
<%-- 						id="cargarNoticias"><spring:message code="cargar.mas" /></a> --%>
						<input type="button" class="btn btn-primary btn-lg" id="cargarNoticias" value="<spring:message code="cargar.mas"/>"/>
				</p>
			</div>





		</div>
	</div>

	<%@include file="common/footer.jsp"%>
	








</body>
</html>