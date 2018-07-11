
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>

<html lang="es">
<head>
	<meta charset="UTF-8">electric skate snow
	<title>El certamen</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/certamen.css" />"/>
</head>
<body>
	<header>
		<div id="contenido_header">
			<div id="logo">
				<a href="<c:url value="/" />"><img src="<c:url value="resources/images/logocertamen.png"/>" alt="logotipo de la empresa"></a>
			</div><!--fin del logo-->
		</div><!-- fin del div contenido_header -->
	</header>
	<%@include file="common/menu.jsp" %>
	<section id="galeria">
		<div id="contenido-iframe">
			<div id="slide_galeria">
					<div id="form_container">
					 <form:form method="POST" action="">
						   <table>
							<tr>
								<td><form:label path="name">Nombre Grupo</form:label></td>
								<td><form:input path="name" /></td>
							</tr>
							<tr>
								<td><form:label path="age">Numero de componentes</form:label></td>
								<td><form:input path="age" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Telefono de contacto</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Procedencia</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Canal de youtube</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Instagram</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Facebook</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Twitter</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
						<!--	<tr>
								<form:radiobutton path="" value="BandCamp"/>BandCamp
								<form:radiobutton path="sex" value="SoundCloud"/>SoundCloud
							</tr> -->
							<tr>
								<td><p id="sin_padding">A continuaci&oacute;n introduzca las URLs de las canciones presentadas a concurso:</p></td>
								<td></td>
							</tr>
							<tr>
								<td><form:label path="id">Cancion 1</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Cancion 2</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Cancion 3</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							<tr>
								<td><form:label path="id">Cancion 4</form:label></td>
								<td><form:input path="id" /></td>
							</tr>
							
							<tr>
								<td colspan="2">
									<input type="submit" value="Submit"/>
								</td>
							</tr>
						</table>  
					</form:form>
				</div>
			</div>
		</div> <!--fin del divcontenido  galeria	-->
	</section>	<!--fin de galeria	-->
	<div class="nf"></div>
	<section id="contenido">
		<div id="contenido_contenido">
			<article id="post">
				
		</div> <!-- fin del div con contenido -->
	</section> <!-- fin del section contenido -->
	<div class="nf">
	<%@include file="common/footer.jsp" %>
</body>
</html>