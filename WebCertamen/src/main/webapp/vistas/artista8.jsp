
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
				<h1>AMATRIA</h1>
				<p>Amatria es el proyecto personal del productor musical
					ciudadrealeño Joni Antequera. El proyecto nace en Valencia en 2007
					y cabalga entre la música electrónica y las melodías pop. Muy
					ligado al mismo está Amatria Disuelve, la versión DJ/producer del
					mismo. El ritmo compositivo de Joni Antequera era superior al de
					las bandas en las que militaba en 2007, de la necesidad de dar
					salida a estas composiciones excedentes surge Amatria, como
					proyecto personal alternativo. Al verse obligado a crear sus
					propias bases rítmicas para construir las canciones comienza a
					adentrarse cada vez más en la electrónica, de forma que dos años
					después es éste el género predominante en ellas.</p>
				<div class="col-lg-8 col-md-offset-2 separador">
					<img src="<c:url value="/images/amatria.jpg"/>"
						class="img-responsive" alt="dallasgracias" />

				</div>


			</div>
			<div class="row separador">
				<h2>CONTENIDO MULTIMEDIA</h2>

				<div class="col-lg-6 separador">

					<iframe
						src="https://open.spotify.com/embed/artist/5aINmhPWfAHvZ5qaMdBezq"
						width="100%" height="400" frameborder="0" allowtransparency="true"
						allow="encrypted-media"></iframe>
				</div>
				<div class="col-lg-6 separador">
					<iframe width="100%" height="400"
						src="http://www.youtube.com/embed/videoseries?list=PLhScbt6baiIf7KGrvHDDGLUUHQRyZC5Mg&hl=es_ES "
						frameborder="0" allowfullscreen></iframe>

				</div>
			</div>
		</div>


	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>