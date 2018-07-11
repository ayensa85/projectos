
<%@ page language="java" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<script type="text/JavaScript"
	src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
<script type="text/javascript">
	$(document).ready(
			function() { // Script del menú con pestañas
				$('#contenido_pestanas div').css('position', 'absolute').not(
						':first').hide();
				$('#contenido_pestanas ul li:first a').addClass('aqui');
				$('#contenido_pestanas a').click(
						function() {
							$('#contenido_pestanas a').removeClass('aqui');
							$(this).addClass('aqui');
							$('#contenido_pestanas div').fadeOut(350).filter(
									this.hash).fadeIn(350);
							return false;

						});
			});
</script>
<html>
<head>
<meta charset="UTF-8">
<title>El certamen</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/certamen.css" />">
</head>
<body>
	<header>
		<div id="contenido_header">
			<div id="logo">
				<a href='<c:url value="/" />'><img
					src="<c:url value="/resources/images/logocertamen.png" />"
					alt="logo del certamen" /></a>
			</div>
			<!--fin del logo-->
		</div>
		<!-- fin del div contenido_header -->
	</header>
	<%@include file="common/menu.jsp" %>
	<section id="galeria">
		<div id="contenido-iframe">
			<div id="slide_galeria">

				<div id="contenido_pestanas">
					<ul>
						<li><a href="#opcion1" title="Día 1">Dia 1 </a></li>
						<li><a href="#opcion2" title="Día 2">Dia 2 </a></li>
						<li><a href="#opcion3" title="Día 3">Dia 3 </a></li>
						<li><a href="#opcion4" title="Día 4">Dia 4 </a></li>
					</ul>

					<div id="opcion1">
						<table class="reproductores">
							<tr>
								<td><spring:message code="participante.primero" /> </td>
							</tr>
							<tr>
								<td><iframe width="80%" height="50" scrolling="no"
										frameborder="no"
										src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/5345802&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
									<iframe width="80%" height="50" scrolling="no"
										frameborder="no"
										src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/5345802&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
									<iframe width="80%" height="50" scrolling="no"
										frameborder="no"
										src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/5345800&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
									<iframe width="80%" height="50" scrolling="no"
										frameborder="no"
										src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/5345801&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
									<a class="twitter-timeline" data-width=82% data-height="300"
									href="https://twitter.com/thenightanimal">Tweets by
										thenightanimal</a> <script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/yzfbTWpoZYA?list=RDy66GQLU8RmA"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

							<tr>
								<td><spring:message code="participante.segundo" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=356136647/size=small/bgcol=ffffff/linkcol=0687f5/track=784068919/transparent=true/"
										seamless>
										<a href="http://sonograma.bandcamp.com/album/sacramento">Sacramento
											by Sonograma</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=356136647/size=small/bgcol=ffffff/linkcol=0687f5/track=919548421/transparent=true/"
										seamless>
										<a href="http://sonograma.bandcamp.com/album/sacramento">Sacramento
											by Sonograma</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=356136647/size=small/bgcol=ffffff/linkcol=0687f5/track=919548421/transparent=true/"
										seamless>
										<a href="http://sonograma.bandcamp.com/album/sacramento">Sacramento
											by Sonograma</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=356136647/size=small/bgcol=ffffff/linkcol=0687f5/track=1634086126/transparent=true/"
										seamless>
										<a href="http://sonograma.bandcamp.com/album/sacramento">Sacramento
											by Sonograma</a>
									</iframe> <a class="twitter-timeline" data-width=82% data-height="300"
									href="https://twitter.com/SonogramaGrupo">Tweets by
										SonogramaGrupo</a> <script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/videoseries?list=PLCoefIS1D6lGtwwbLdu47bJlXp1-OGZ_Q"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

						</table>

					</div>
					<div id="opcion2">
						<table class="reproductores">
							<tr>
								<td><spring:message code="participante.tercero" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1556541709/size=small/bgcol=ffffff/linkcol=0687f5/track=4224888197/transparent=true/"
										seamless>
										<a
											href="http://stereotipo.bandcamp.com/album/certos-dias-por-semana">Certos
											Dias por Semana by Stereo Tipo</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1556541709/size=small/bgcol=ffffff/linkcol=0687f5/track=1641557218/transparent=true/"
										seamless>
										<a
											href="http://stereotipo.bandcamp.com/album/certos-dias-por-semana">Certos
											Dias por Semana by Stereo Tipo</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1556541709/size=small/bgcol=ffffff/linkcol=0687f5/track=3544735581/transparent=true/"
										seamless>
										<a
											href="http://stereotipo.bandcamp.com/album/certos-dias-por-semana">Certos
											Dias por Semana by Stereo Tipo</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1556541709/size=small/bgcol=ffffff/linkcol=0687f5/track=3386304546/transparent=true/"
										seamless>
										<a
											href="http://stereotipo.bandcamp.com/album/certos-dias-por-semana">Certos
											Dias por Semana by Stereo Tipo</a>
									</iframe><a class="twitter-timeline" data-width=82% data-height="300"
									href="https://twitter.com/thenightanimal">Tweets by
										thenightanimal</a> <script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td></td>
									
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/sUXJv9OdxmM"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

							<tr>
								<td><spring:message code="participante.cuarto" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2512785301/size=small/bgcol=ffffff/linkcol=0687f5/track=1851845918/transparent=true/"
										seamless>
										<a href="http://alademoska.bandcamp.com/album/caminito-al-bar">Caminito
											al Bar by Alademoska</a>
									</iframe> <iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2512785301/size=small/bgcol=ffffff/linkcol=0687f5/track=1188182995/transparent=true/"
										seamless>
										<a href="http://alademoska.bandcamp.com/album/caminito-al-bar">Caminito
											al Bar by Alademoska</a>
									</iframe> <iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2512785301/size=small/bgcol=ffffff/linkcol=0687f5/track=1401263443/transparent=true/"
										seamless>
										<a href="http://alademoska.bandcamp.com/album/caminito-al-bar">Caminito
											al Bar by Alademoska</a>
									</iframe> <iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2512785301/size=small/bgcol=ffffff/linkcol=0687f5/track=3411250228/transparent=true/"
										seamless>
										<a href="http://alademoska.bandcamp.com/album/caminito-al-bar">Caminito
											al Bar by Alademoska</a>
									</iframe><a class="twitter-timeline" data-width=82% data-height="300"
									href="https://twitter.com/thenightanimal">Tweets by
										thenightanimal</a> <script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/yzfbTWpoZYA?list=RDy66GQLU8RmA"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

						</table>
					</div>
					<div id="opcion3">

						<table class="reproductores">
							<tr>
								<td><spring:message code="participante.quinto" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2588029256/size=small/bgcol=ffffff/linkcol=0687f5/track=1759179070/transparent=true/"
										seamless>
										<a
											href="http://iseo.bandcamp.com/album/iseo-dodosound-cat-platoon">Iseo&amp;Dodosound
											- Cat Platoon by Iseo</a>
									</iframe> <iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2588029256/size=small/bgcol=ffffff/linkcol=0687f5/track=3997780691/transparent=true/"
										seamless>
										<a
											href="http://iseo.bandcamp.com/album/iseo-dodosound-cat-platoon">Iseo&amp;Dodosound
											- Cat Platoon by Iseo</a>
									</iframe> <iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2588029256/size=small/bgcol=ffffff/linkcol=0687f5/track=3026475854/transparent=true/"
										seamless>
										<a
											href="http://iseo.bandcamp.com/album/iseo-dodosound-cat-platoon">Iseo&amp;Dodosound
											- Cat Platoon by Iseo</a>
									</iframe> <iframe style="border: 0; width: 100%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=2588029256/size=small/bgcol=ffffff/linkcol=0687f5/track=1796822007/transparent=true/"
										seamless>
										<a
											href="http://iseo.bandcamp.com/album/iseo-dodosound-cat-platoon">Iseo&amp;Dodosound
											- Cat Platoon by Iseo</a>
									</iframe><a class="twitter-timeline" data-width=82% data-height="300"
									href="https://twitter.com/thenightanimal">Tweets by
										thenightanimal</a> <script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/videoseries?list=PL6aNFe-Pq65uRPGopYvzmPdk-pPtV9fgE"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

							<tr>
								<td><spring:message code="participante.sexto" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/
										linkcol=0687f5/track=3850844388/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">
											The Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="http://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=805009153/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=953457221/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=4226355756/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe><a class="twitter-timeline" data-width=82% data-height="300"
									href="https://twitter.com/thenightanimal">Tweets by
										thenightanimal</a> <script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/yzfbTWpoZYA?list=RDy66GQLU8RmA"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

						</table>
					</div>
					<div id="opcion4">

						<table class="reproductores">
							<tr>
								<td><spring:message code="participante.septimo" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/
										linkcol=0687f5/track=3850844388/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">
											The Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="http://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=805009153/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=953457221/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=4226355756/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe><script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/yzfbTWpoZYA?list=RDy66GQLU8RmA"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

							<tr>
								<td><spring:message code="participante.octavo" /></td>
							</tr>
							<tr>
								<td><iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/
										linkcol=0687f5/track=3850844388/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">
											The Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="http://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=805009153/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=953457221/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe> <iframe style="border: 0; width: 80%; height: 42px;"
										src="https://bandcamp.com/EmbeddedPlayer/album=1749389891/size=small/bgcol=ffffff/linkcol=0687f5/track=4226355756/transparent=true/"
										seamless>
										<a
											href="http://thenightanimal.bandcamp.com/album/the-night-animal">The
											Night Animal by The Night Animal</a>
									</iframe><script async
										src="//platform.twitter.com/widgets.js" charset="utf-8"></script></td>
								<td></br></td>
								<td><iframe width="450" height="400"
										src="https://www.youtube.com/embed/yzfbTWpoZYA?list=RDy66GQLU8RmA"
										frameborder="0" allowfullscreen></iframe></td>
							</tr>

						</table>
					</div>
				</div>

				<!-- Fin contenido_pestanas-->
			</div>
		</div>
		<!--fin del divcontenido  galeria	-->
	</section>
	<!--fin de galeria	-->
	<div class="nf"></div>
	<section id="contenido">
		<div id="contenido_contenido">
			<article id="post">

				</aside>
		</div>
		<!-- fin del div con contenido -->
	</section>
	<!-- fin del section contenido -->
	<div class="nf"></div>
	<section id="prefooter">
		<div id="contenido_prefooter">
			<section id="estado">
				<div id="redessociales"></div>
				<!-- fin de div de clientes -->

			</section>
			<!-- fin del section state -->
		</div>
		<!-- fin del div contenido_prefooter -->
	</section>
	<!-- fin del section prefooter -->


		<%@include file="common/footer.jsp" %>
</body>
</html>