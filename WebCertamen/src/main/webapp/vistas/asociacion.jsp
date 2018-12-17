<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title>El certamen</title>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Asociacion</title>

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
	"
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

	<%@include file="common/menu.jsp"%>
	<div class="centrado separador">
		<img alt="" src="<c:url value="/images/tajadores.jpg"/>"
			class="img-responsive centrado separador" />
	</div>
	<div class="container">
		<div class="row marketing jumbotron">
			<h1>

				<%-- 				<spring:message code="certamen.festival.titulo" /> --%>
				La asociacion
			</h1>
			<p>Somos un grupo de jóvenes que trabajamos sin ánimo de lucro para intentar hacer de las fiestas de invierno de nuestro pueblo 
			un referente en cuanto a la variedad musical se refiere, al mismo tiempo que intentamos ayudar con la fase de concurso a tocas aquellas bandas 
			emergentes que necesitan ayuda económica para empezar una andadura complicada en el mundo musical para tratar de alcanzar el éxito.</p>
				<hr class="featurette divider separador" />
			<div class="row separador">
				<h1>

				<%-- 				<spring:message code="certamen.festival.titulo" /> --%>
				Miembros
			</h1>
				<div class="col-sm-6 col-md-4 col-lg-3 col-md-offset-2">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/paula.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Paula</h2>
							<p>La capitana de nuestro barco y la todoterreno de la asociación</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/txollas.jpg"/>" alt="txoyas" class="img-responsive"/>
						<div class="caption">
							<h2>Txollas</h2>
							<p>Tesorero, gestor y poli malo de la asociación.</p>
							
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/juanayensa.jpg"/>" alt="juan" class="img-responsive"/>
						<div class="caption">
							<h2>Juan</h2>
							<p>Nuestro informático y Encargado de zona de barras</p>
							
						</div>
					</div>
				</div>
			</div>
			<div class="row separador">
				<div class="col-sm-6 col-md-4 col-lg-3 col-md-offset-2">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/teresa.jpg"/>" alt="teresa" class="img-responsive"/>
						<div class="caption">
							<h2>Teresa</h2>
							<p>Encargada de la zona de barras y nuestra jotera particular</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/esty.jpg"/>" alt="esti" class="img-responsive"/>
						<div class="caption">
							<h2>Estibaliz</h2>
							<p>Encargada zona de guardaropa y fashion victim</p>
							
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/rodrigo.jpg"/>" alt="rodrigo" class="img-responsive"/>
						<div class="caption">
							<h2>Rodrigo</h2>
							<p>Nuestro gentleman particular</p>
							
						</div>
					</div>
				</div>
			</div>
			<div class="row separador">
				<div class="col-sm-6 col-md-4 col-lg-3 col-md-offset-2">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/alberto.jpg"/>" alt="alberto" class="img-responsive"/>
						<div class="caption">
							<h2>Alberto</h2>
							<p>Extraditado a dublin</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/rocio.jpg"/>" alt="rocio" class="img-responsive"/>
						<div class="caption">
							<h2>Rocio</h2>
							<p>Nuestra magnifica cantante y encargada de guardarropa</p>
							
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/Miguel.jpg"/>" alt="miguel" class="img-responsive"/>
						<div class="caption">
							<h2>Miguel</h2>
							<p>Mano derecha de paula y el hombre que le susurra a las aves</p>
							
						</div>
					</div>
				</div>
			</div>
			<div class="row separador">
				<div class="col-sm-6 col-md-4 col-lg-3 col-md-offset-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/Bea.jpg"/>" alt="bea" class="img-responsive"/>
						<div class="caption">
							<h2>Bea</h2>
							<p>Encargada de guardarropa y taquillas y nuestra gótica particular</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3 ">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/portoles.jpg"/>" alt="portoles" class="img-responsive"/>
						<div class="caption">
							<h2>Portoles</h2>
							<p>Donador de pitillos</p>
							
						</div>
					</div>
				</div>
			</div>
			<div class="row separador">
				<h1>

				<%-- 				<spring:message code="certamen.festival.titulo" /> --%>
				Mención especial 
			</h1>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/pablo.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Pablo</h2>
							<p>Colaborador del certamen</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/javi.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Javi</h2>
							<p>Colaborador del certamen</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/ana-simon.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Ana Simón</h2>
							<p>Colaboradora del certamen</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/javi-goni.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Javier Goñi</h2>
							<p>Mobile-app</p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row separador">
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/anabelen.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Ana Belén</h2>
							<p>Colaboradora del certamen</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/cuto.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Cuto</h2>
							<p>Comunicación del certamen</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/anselmomo.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Ansel Momo</h2>
							<p>Colaborador del certamen</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/tulsa-buena.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Alberto, el mundo de tulsa</h2>
							<p>Colaborador del certamen</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row separador">
				<div class="col-sm-6 col-md-4 col-lg-3 col-md-offset-5">
					<div class="thumbnail separador">
						<img src="<c:url value="/images/txemi.jpg"/>" alt="paula" class="img-responsive"/>
						<div class="caption">
							<h2>Txemi</h2>
							<p>Colaborador del certamen</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</div>
	

	<%@include file="common/footer.jsp"%>









</body>
</html>