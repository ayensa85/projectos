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
				<h1>Dallasgracias</h1>
				<p>Si el verdadero flirteo entre el rock psicodélico y los
					sonidos más frescos de la escena indie tuviera nombre propio, este
					sería sin duda alguna Dallasgracias. A lo largo de su trayectoria,
					el quinteto vigués ha sabido ofrecer una fórmula auténtica que ha
					cautivado a público y crítica tanto en salas de diversas
					comunidades (Castilla y León, Madrid, Galicia, Aragón…) como en
					reconocidos festivales (Portamérica…). En 2014 sale a la luz su
					primer trabajo "La increíble historia de la chica de Australia",
					grabado en los estudios Reno de Madrid bajo la producción de Ramiro
					Nieto y Martí Perarnau. En 2016 presentan "Enefene", dirigido por
					Luis Antelo en Estereoarte (Vigo). "Enefene" es un EP efervescente
					y enérgico, con el que la banda convierte su presencia encima del
					escenario en un ritual, un show ajeno a etiquetas donde alcanzar el
					"enefenio" es la principal ambición, y que reafirma a Dallasgracias
					como una de las promesas de la escena gallega y estatal. Galician
					Tunes: “un sonido potente, cuidado hasta el más mínimo detalle”.

					Indiescretos: “Un directo inmejorable”. Colectivo de raro
					propósito: “No es habitual ver a una banda de tan corta trayectoria
					con un sonido tan compacto y un estilo tan definido”.</p>
				<div class="col-lg-8 col-md-offset-2 separador">
					<img src="<c:url value="/images/artista-dallas.jpg"/>"
						class="img-responsive" alt="dallasgracias" />

				</div>


			</div>
		</div>
		<div class="row separador">
			<h2>CONTENIDO MULTIMEDIA</h2>

			<div class="col-lg-6 separador">

				<iframe style="border: 0; width: 350px; height: 470px;"
					src="https://bandcamp.com/EmbeddedPlayer/album=2038207138/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/"
					seamless>
					<a
						href="http://dallasgracias.bandcamp.com/album/la-incre-ble-historia-de-la-chica-de-australia">La
						increíble historia de la chica de Australia by Dallasgracias</a>
				</iframe>

			</div>


			<div class="col-lg-6 separador">

				<iframe style="border: 0; width: 350px; height: 470px;"
					src="https://bandcamp.com/EmbeddedPlayer/album=1781016252/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/"
					seamless>
					<a href="http://dallasgracias.bandcamp.com/album/enefene">Enefene
						by Dallasgracias</a>
				</iframe>

			</div>
		</div>
		<div class="row separador">
			
			<iframe width="100%" height="400"
				src="http://www.youtube.com/embed/videoseries?list=PLDwCcI0JVayT3e-CaQY_RMVwfQWh-VIsc&hl=es_ES "
				frameborder="0" allowfullscreen></iframe> 
		</div>
	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>