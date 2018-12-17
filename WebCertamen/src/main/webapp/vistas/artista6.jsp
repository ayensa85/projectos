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


	<div class="container marketing ">
		<div class="jumbotron">
			<div class="row separador">
				<h1>INVADERS</h1>
				<p>Proyecto que combina el rock y la electrónica, iniciado por
					Miguel Angel Orihuela Ros que tras largos años de intento, por fin
					parece que se están dando los acontecimientos necesarios para
					llevarlo a cabo, junto Jose Manuel Bosca, empiezan a darle forma a
					las canciones. A principios de 2016 consiguen formar un grupo y dan
					su primer concierto el 18 de Marzo en Magazine Club,
					desgraciadamente pierden al bajista y teclista por motivos de
					trabajo en Berlin, pero eso no hace que pierdan la esperanza, y
					deciden grabar 2 canciones en Madrid junto a Pau Paredes, de allí
					salen For You y Jekyll and Mr. Hyde, y ya en la actualidad empiezan
					los ensayos para poder llevar esas y muchas otras canciones a los
					escenarios, próximamente on Live!!</p>
				<div class="col-lg-8 col-md-offset-2 separador">
					<img src="<c:url value="/images/artista-invaders.jpg"/>"
						class="img-responsive" alt="dallasgracias" />

				</div>


			</div>
		</div>
		<div class="row separador">
			<h2>CONTENIDO MULTIMEDIA</h2>

			<div class="col-lg-12 separador">

				<iframe style="border: 0; width: 350px; height: 470px;" src="https://bandcamp.com/EmbeddedPlayer/album=4016059782/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/" seamless><a href="http://losinvadersband.bandcamp.com/album/take-me-home">Take me home by Los Invaders</a></iframe>

			</div>


			<div class="col-lg-6 separador"></div>
		</div>
		<div class="row separador">
			<iframe width="100%" height="315" src="https://www.youtube.com/embed/q4YII_ybXWs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>