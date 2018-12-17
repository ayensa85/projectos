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
	<!-- PArte que mueve los componentes javasript de boostrap -->
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

	<%@include file="common/menu.jsp"%>
	<div class="row">
		<div class="embed-responsive embed-responsive-16by9 separador">
			<iframe width="560" height="1"
				src="https://www.youtube.com/embed/jFIwa0bWaFI" frameborder="0"
				allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>



	</div>
	<div class="jumbotron">
		<div class="marketing">
			<h1>Bases del concurso</h1>
		</div>
		<div class="container separador">
			<p>1.- Todos los grupos interesados en participar en el 23
				Certamen "Villa de San Adrián" deberán enviar sus datos mediante el
				formulario que se presenta en la web www.elcertamen.com</p>


			<p>2.- Será de obligatorio cumplimiento el envío de al menos uno
				de los links solicitados (bandcamp, soundcould, spotify, etc) para
				la escucha de las canciones del grupo.</p>


			<p>3.- El plazo de envío de maquetas es del 10 de octubre al 10
				de noviembre de 2018.</p>


			<p>4.- La organización solo mantendrá contacto con miembros en
				activo del grupo, es por ello, que los datos facilita dos por los
				participantes deberá pertenecer a algún miembro en activo del grupo
				(excluyendo familiares, managers, etc...). En caso de que los datos
				proporcionados por los clasificados para la fase final no
				pertenezcan a ningún integrante del grupo, la organización se
				reserva el derecho de excluir a la banda de la fase final.</p>


			<p>5.- El jurado seleccionará entre todas las maquetas recibidas
				las 6 participantes en la fase final del concurso.</p>


			<p>6.- La fase final se celebrará del 3 al 5 de enero de 2019,
				ambos inclusive. La organización se pondrá en contacto con los
				grupos seleccionados para informarles del día y la hora de su
				actuación en directo en el escenario situado en la plaza Fructuoso
				Muerza, de San Adrián (Navarra) y los requisitos a cumplir para
				confirmar su asistencia.</p>

			<p>7.- Todo grupo finalista que haya confirmado su asistencia al
				22 Certamen Villa de San Adrián y que por causas no justificadas
				decida no asistir al festival, será sancionado con una multa de 300
				euros.</p>


			<p>8.- La actuación de cada grupo durará entre 45 minutos y 1
				hora.</p>


			<p>9.- El premio ganador consistirá en 1.000 € en material
				musical o promocional del grupo así como su participación en el
				festival de musica Navarra Sur</p>

			<p>10.- La Organización se hace cargo de la cena de los miembros
				de los grupos participantes el día de su actuación.</p>


			<p>11.- Además, los grupos cuya distancia de San Adrián sea igual
				o superior a 175 kilómetros, tienen la posibilidad de pernoctar (por
				cuenta de la Organización) el día de su actuación. El cálculo del
				kilometraje irá en función de la procedencia del grupo (no de sus
				miembros).</p>


			<p>12.- La Organización pone a disposición de los grupos
				finalistas además de técnicos de sonido e iluminación, equipo de
				P.A., monitores y u na batería completa; teniendo que traer su
				propio backline para que luzca más vuestra actuación y tener más
				opciones al premio, dado el nivel de este Certamen.</p>


			<p>13.- La cuantía de los premios será entregada después de
				presentar factura acreditativa del material musical adquirido,
				incluyendo alquiler de locales o del gasto promocional (anuncios,
				conciertos, etc.). En el caso de no presentar la factura dentro de
				los 5 meses siguientes a la finalización del Certamen, el ganador
				perderá su derecho al premio.</p>


			<p>14.- El Jurado Popular que otorga el Premio estará compuesto
				por miembros de colectivos juveniles de la localidad.</p>

			<p>15.- No podrán presentarse aquellos grupos ganadores del
				premio oficial en ediciones anteriores.</p>


			<p>16.- El Jurado podrá declarar desierto el premio si lo estima
				oportuno.</p>


			<p>17.- Los grupos finalista que una vez admitidos no participen
				en la competición, salvo por, causa grave justificada apreciada por
				el Comité Organizador, quedarán inhabilitadas para poder inscribirse
				en el Concurso por un período de tres años consecutivos.</p>



			<p>18.- La Asociación Juvenil el Tajador se guarda el derecho de
				realizar cambios en las bases con el único fin de mejorar los
				premios y la dinámica del concurso.</p>


			<p>19.- La participación en este Certamen, supone la aceptación
				de estas bases.</p>


		</div>
		<div class="row marketing separador">
			<div class="col-lg-6 separador">
				<a
					href="${pageContext.request.contextPath}/certamen/bases/downloadpdf"
					class="btn btn-primary btn-lg">Descargar en pdf</a>

			</div>
			<div class="col-lg-6 separador">
				<a
					href="${pageContext.request.contextPath}/certamen/bases/participar"
					class="btn btn-primary btn-lg">Participa</a>
			</div>
		</div>


	</div>


	<%@include file="common/footer.jsp"%>









</body>
</html>