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
				<h1>GIGANTE</h1>
				<p>Grupo formado en Barcelona a principios de 2015, con miembros
					provenientes de Karma Police y Holywild bandas con las que
					publicarón 6 cd's y realizaron cientos de conciertos. El estilo de
					Gigante se enmarca dentro del pop alternativo, canciones directas,
					estribillos pegadizos y letras que conectan con el oyente.</p>
				<div class="col-lg-8 col-md-offset-2 separador">
					<img src="<c:url value="/images/artista-gigante-horiz.jpg"/>"
						class="img-responsive" alt="dallasgracias" />

				</div>


			</div>
			<div class="row separador">
				<h2>CONTENIDO MULTIMEDIA</h2>

				<div class="col-lg-6 separador">

					<iframe style="border: 0; width: 350px; height: 470px;"
						src="https://bandcamp.com/EmbeddedPlayer/album=2625852519/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/"
						seamless>
						<a
							href="http://estoesgigante.bandcamp.com/album/momento-de-tangencia">Momento
							de tangencia by GIGANTE</a>
					</iframe>
					</iframe>

				</div>
				<div class="col-lg-6 separador">

					<iframe style="border: 0; width: 350px; height: 470px;"
						src="https://bandcamp.com/EmbeddedPlayer/album=3437699719/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/"
						seamless>
						<a
							href="http://estoesgigante.bandcamp.com/album/el-lenguaje-original">El
							lenguaje original by GIGANTE</a>
					</iframe>

				</div>


				<div class="col-lg-6 separador"></div>
			</div>
			<div class="row separador">
				<iframe width="100%" height="315"
					src="https://www.youtube.com/embed/SdThhyW_qbQ" frameborder="0"
					allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>
		</div>

	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>