

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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

	<%@include file="common/menu.jsp"%>


	<div class="container-fluid marketing ">
		<div class="row jumbotron">
			<div class="row separador">
				<h1>WAS</h1>
				<p>Una revolución sónica a disposición del baile. WAS han
					tomando todos los elementos necesarios para reivindicar unas raíces
					propias y recrearlas a través de sonidos contemporáneos. Una
					revolución sónica a disposición del baile que incluye elementos del
					folklore vasco (también del euskera) con instrumentos centenarios,
					pop electrónico, house. Han colaborado en la grabación los
					txalapartaris Oreka Tx y Cris de Belako. Producido por Jon
					Aguirrezabalaga y mezclado por Alex Ferrer. Ha sido masterizado en
					Sterling Sound, New York, por Randy Merrill, responsable de
					trabajos como ‘Uptown Funk’ de Mark Ronson y Bruno Mars o ’25’ de
					Adele. “Gau Ama” representa una nueva era no sólo para el grupo,
					sino para parte de una escena que busca trascender sin perder la
					identidad.</p>
				<div class="col-lg-8 col-md-offset-2 separador">
					<img src="<c:url value="/images/was.jpg"/>" class="img-responsive"
						alt="dallasgracias" />

				</div>


			</div>
			<div class="row separador">
				<h2>CONTENIDO MULTIMEDIA</h2>

				<div class="col-lg-6 separador">

					<iframe
						src="https://open.spotify.com/embed/artist/0Vy8ogc0toTWyui4W7FEB6"
						width="100%" height="400" frameborder="0" allowtransparency="true"
						allow="encrypted-media"></iframe>
				</div>
				<div class="col-lg-6 separador">

					<iframe width="100%" height="400"
						src="https://www.youtube.com/embed/EWfkVNtWns8" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
			</div>
			<div class="row separador"></div>
		</div>

	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>

