<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Alojamiento</title>

<!-- Bootstrap core CSS -->
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
		$(document).ready(function() {
			$(".oculto").hide();
			$("#cargarAlojamiento").click(function() {
				$(".oculto").show();
				$("#cargarAlojamiento").hide();

			});

		});
	</script>

	<%@include file="common/menu.jsp"%>
	<div class="container">
		<div class="row separador">
			<div class="col-lg-4">
				<img class="img-responsive" src="<c:url value="/images/rios.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOTEL RIOS</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; San Adrián
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 948 672 624
				</p>
				<a href="http://www.hotelrios.es/" class="btn btn-primary"
					role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">

					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2949.4208493187207!2d-1.9337726842712373!3d42.33354997918863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a8ee0d3c1fe03%3A0x290c4026578388f6!2sHotel+R%C3%ADos!5e0!3m2!1ses!2ses!4v1540480081009"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
			</div>

		</div>
		<div class="row separador">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/HOSTAL-OCHOA.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOSTAL OCHOA</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; San Adrián
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 948 93 12 77
				</p>
				<a href="https://www.booking.com/hotel/es/hostal-ochoa.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">

					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2949.3220397239547!2d-1.9366146845149603!3d42.33565694463498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a8ee3d4d99fd5%3A0x5d24896fd44aff9e!2sHostal+OCHOA*2A*2A+Palmira+S.+Ochoa+Gurpegui!5e0!3m2!1ses!2ses!4v1540483057769"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
			</div>

		</div>
		<div class="row separador">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/villa-andosilla.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOTEL VILLA DE ANDOSILLA</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; Andosilla
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 948 69 05 64
				</p>
				<a
					href="https://www.booking.com/hotel/es/villa-de-andosilla.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">

					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2947.3646909452555!2d-1.9464926845138117!3d42.37737694200043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a8580aab0531b%3A0x3c484df968f94544!2sHotel+Villa+De+Andosilla!5e0!3m2!1ses!2ses!4v1540485629388"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
			</div>

		</div>
		<div class="row separador oculto">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/villa-carcar.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOSTAL VILLA DE CARCAR</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; Andosilla
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 948 67 41 06
				</p>
				<a href="https://www.booking.com/hotel/es/villa-de-carcar.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">

					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2946.4696641060027!2d-1.9881163845133258!3d42.396442940795666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a854a80a4f879%3A0x8dafb735487c32b5!2sHotel-Restaurante-Asador+Villa+de+C%C3%A1rcar!5e0!3m2!1ses!2ses!4v1540485702179"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
			</div>

		</div>
		<div class="row separador oculto">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/venecia-azagra.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOSTAL VENECIA</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; Azagra
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 948 69 22 41
				</p>
				<a
					href="https://www.booking.com/hotel/es/hostal-venecia-azagra.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2481.044015276739!2d-1.9003632939966917!3d42.31106233785859!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a895ad1584961%3A0xe7d4dbf52330f95c!2sHostal+Venecia!5e0!3m2!1ses!2ses!4v1540486247663"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>

				</div>
			</div>

		</div>
		<div class="row separador oculto">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/zenit-calahorra.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOTEL ZENIT CALAHORRA</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; Calahorra
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 941 14 79 52
				</p>
				<a
					href="https://www.booking.com/hotel/es/zenitcalahorra.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2950.065487939281!2d-2.0026656845153252!3d42.31980194563556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a91c2556ba7a5%3A0x27a21cee2bf4252c!2sHotel+Zenit+Calahorra!5e0!3m2!1ses!2ses!4v1540486512284"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>

				</div>
			</div>

		</div>
		<div class="row separador oculto">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/parador-calahorra.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOTEL PARADOR CALAHORRA</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; Calahorra
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 941 13 03 58
				</p>
				<a
					href="https://www.booking.com/hotel/es/parador-de-calahorra.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2950.7268754605816!2d-1.9639136845156877!3d42.305692946525724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a8e7166b2870f%3A0x9a73cd7e290c607c!2sParador+de+Calahorra!5e0!3m2!1ses!2ses!4v1540486627084"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>

				</div>
			</div>

		</div>
		<div class="row separador oculto">
			<div class="col-lg-4">
				<img class="img-responsive"
					src="<c:url value="/images/ciudad-calahorra.jpg"/>" />

			</div>
			<div class="col-lg-4 marketing">
				<h3>HOTEL CIUDAD DE CALAHORRA</h3>

				<p>
					<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					&nbsp; Calahorra
				</p>
				<p>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
					&nbsp; 941 14 74 34
				</p>
				<a
					href="https://www.booking.com/hotel/es/ciudad-de-calahorra.es.html"
					class="btn btn-primary" role="button">Reserva</a>
			</div>
			<div class="col-lg-4">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2950.7976491241507!2d-1.9689296845157662!3d42.304182946621026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5a8e7372f22171%3A0x446426bb640987e8!2sHotel+Ciudad+de+Calahorra!5e0!3m2!1ses!2ses!4v1540486808058"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>

				</div>
			</div>

		</div>
		<div class="row marketing separador">
			<input type="button" class="btn btn-primary btn-lg"
				id="cargarAlojamiento" value="<spring:message code="cargar.mas"/>" />
		</div>


	</div>

	<%@include file="common/footer.jsp"%>









</body>
</html>