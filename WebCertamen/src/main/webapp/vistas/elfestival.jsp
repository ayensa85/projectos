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

<title>El festival</title>

<!-- Bootstrap core CSS -->
<!-- Latest compiled and minified CSS -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<c:url value="/css/certamen.css"/>">
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
	<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.lazy/1.7.1/jquery.lazy.min.js"></script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.lazy/1.7.1/plugins/jquery.lazy.youtube.min.js"></script>
		$(document).ready(function() {
			$("#carrousel").hide();
			$("#tituloCarousel").hide();

			$("#mostrarCarrousel").click(function() {
				if ($("#carrousel").is(":visible")) {
					$("#carrousel").hide();
					$("#tituloCarousel").hide();
				} else {
					$("#carrousel").show();
					$("#tituloCarousel").show();
				}
			});
			$(function() {
    			$("iframe[data-src]").Lazy();
			});

		});
	</script>

	<%@include file="common/menu.jsp"%>


	<div class="row marketing"></div>

	<div class="container">
		<!-- 		<hr class="featurette divider" /> -->
		<div class="jumbotron marketing separador">
			<h1>
				<spring:message code="certamen.festival.titulo" />
			</h1>


			<div class="row marketing" id="noticias">

				<p>
					<spring:message code="certamen.festival.cuerpo" />
				<p>

					<input type="button" class="btn btn-primary btn-lg separador"
						value="<spring:message code="ver.fotos"/>" id="mostrarCarrousel" />
				<div id="tituloCarousel">
					<h2>
						<spring:message code="fotos.titulo" />
					</h2>
				</div>
				<div id="carrousel" class="carousel slide separador"
					data-ride="carousel">

					<!-- Indicators -->
					<div class="separador">
						<ol class="carousel-indicators separador">
							<li data-target="#carrousel" data-slide-to="0" class="active"></li>
							<li data-target="#carrousel" data-slide-to="1" class=""></li>
							<li data-target="#carrousel" data-slide-to="2" class=""></li>
							<li data-target="#carrousel" data-slide-to="3" class=""></li>
							<li data-target="#carrousel" data-slide-to="4" class=""></li>
							<li data-target="#carrousel" data-slide-to="5" class=""></li>
							<li data-target="#carrousel" data-slide-to="6" class=""></li>

						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<a href="/certamen/horarios"><img
									class="first-slide img-responsive"
									src="<c:url value="/images/festival.jpg"/>" " alt="First slide"></a>
								<div class="container">
									<div class="carousel-caption">
										<h1>Sidonie</h1>
									</div>
								</div>
							</div>
							<div class="item">
								<a href="/certamen/tajador"><img
									class="second-slide img-responsive"
									src="<c:url value="/images/desde1986.jpg"/>" alt="Second slide"></a>

							</div>
							<div class="item">
								<img class="second-slide img-responsive"
									src="<c:url value="/images/Belize.jpg"/>" alt="Second slide">
								<div class="container"></div>
							</div>
							<div class="item">
								<img class="second-slide img-responsive"
									src="<c:url value="/images/concierto.jpg"/>" alt="Second slide">
								<div class="container"></div>
							</div>
							<div class="item">
								<img class="second-slide img-responsive"
									src="<c:url value="/images/concierto2.jpg"/>" alt="third slide">
								<div class="container"></div>
							</div>
							<div class="item">
								<img class="second-slide img-responsive"
									src="<c:url value="/images/concierto3.jpg"/>" alt="forth slide">
								<div class="container"></div>
							</div>
							<div class="item">
								<img class="second-slide img-responsive"
									src="<c:url value="/images/concierto4.jpg"/>" alt="forth slide">
								<div class="container"></div>
							</div>

						</div>
						<a class="left carousel-control" href="#carrousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#carrousel" role="button"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="container marketing">
		<div class="row">

			<div class="col-lg-6">
				<div class="circulo">
					<img src="<c:url value="/images/guitarra-alada.png"/>" alt="cabecero">
				</div>

				<h2>
					Eventos en la sala de conciertos
				</h2>
				<p>
					Jueves, viernes y sábado del primer fin de semana de enero te esperamos en la salal luyber de san adrián para los mejores conciertos
				</p>
				
			</div>
			<div class="col-lg-6">
				<div class="circulo">
					<img src="<c:url value="/images/eventos.jpg"/>" alt="cabecero">
				</div>

				<h2>
					Eventos para diferentes públicos
				</h2>
				<p>
					También ofrecemos diferentes eventos que constituyen el cuerpo de las fiestas de invierno de la localidad, tales como eventos asociados a la tercera edad, niños, conciertos en bares de diferentes estilos musicales
				</p>
				
			</div>
		</div>
		<div class="row separador">
		<h2>Videos promocionales del festival</h2>
			<div id="myCarousel" class="carousel slide separador" data-ride="carousel" data-interval="false">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
			<li data-target="#myCarousel" data-slide-to="5" class=""></li>
			<li data-target="#myCarousel" data-slide-to="6" class=""></li>
			
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/kiG66Wu57vo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
				
			</div>
			<div class="item">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/DIgfMHSFuI8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
			</div>
			<div class="item">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/YzJR2EJ2unk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
			</div>
			<div class="item">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/63Vqcn6Z3iM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
			</div>
			<div class="item">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/6BrXmPInJ8k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
			</div>
			<div class="item">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/b_WhMrm7GKk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
			</div>
			<div class="item">
				<div class="embed-responsive embed-responsive-16by9 separador">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/rSkkKwy0o1k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
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
			
		
		
		</div>
	</div>

	<%@include file="common/footer.jsp"%>









</body>
</html>