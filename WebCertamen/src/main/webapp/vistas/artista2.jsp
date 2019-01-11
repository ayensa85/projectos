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
				<h1>Naranja</h1>
				<p>Naranja es un joven proyecto que combina el pop más melódico
					con los riffs y ritmos más transgresores. Definiéndose como Power
					Pop, este cuarteto madrileño ha tocado en numerosos puntos de la
					geografía española y actuado junto a grandes grupos como Miss
					Caffeina o Taburete.</p>
				<div class="col-lg-8 col-md-offset-2 separador">
					<img src="<c:url value="/images/artista-naranja.jpg"/>"
						class="img-responsive" alt="dallasgracias" />

				</div>


			</div>
			
		<div class="row separador">
			<h2>CONTENIDO MULTIMEDIA</h2>

			<div class="col-lg-6 separador">

				<iframe style="border: 0; width: 350px; height: 470px;"
					src="https://bandcamp.com/EmbeddedPlayer/album=954789371/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/"
					seamless>
					<a
						href="http://naranjagrupo.bandcamp.com/album/extra-os-equilibrios">Extraños
						Equilibrios by Naranja</a>
				</iframe>

			</div>


			<div class="col-lg-6 separador">

				<iframe style="border: 0; width: 350px; height: 470px;" src="https://bandcamp.com/EmbeddedPlayer/album=4125076849/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/" seamless><a href="http://naranjagrupo.bandcamp.com/album/toronto">Toronto by Naranja</a></iframe>

			</div>
		</div>
		<div class="row separador">

			<iframe width="100%" height="400"
				src="http://www.youtube.com/embed/videoseries?list=PLwB1XmA0x6mWZMwOEEByeZbg1BLj3v1oV&hl=es_ES "
				frameborder="0" allowfullscreen></iframe>
		</div>	
			
		</div>
		
	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>