<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Vota tu Grupo</title>

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
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
		
	</script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

	<script>
		function votoAJAX(id) {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/certamen/votar/"
								+ id,
						success : function() {
							//your code here

							alert("Voto añadido con éxito");
						},
						error : function() {
							//your code here

							alert("Esta ip ya ha introducido su voto permitido");
						}

					});
		}
	</script>

	<%@include file="common/menu.jsp"%>
	<div class="container centrado marketing separador">
		<h1>Horarios y eventos</h1>

		<div class="row separador">
			

			<div class="col-lg-4 separador">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">D&iacute;a 1</h3>
					</div>
					<div class="media">
						<div class="media-left media-top">
							<a href="#"> <img class="media-object"
								src="<c:url value="/images/family-group(1).png"/>" alt="logo familia">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><strong>CIA, CLOW</strong></h4>
							<h5><strong>Ray ada clown y sus malabares</strong></h5>
							12:00h Casa de Cultura
						</div>
					</div>
					<div class="media">
						<div class="media-left media-top">
							<a href="#"> <img class="media-object"
								src="<c:url value="/images/family-group(1).png"/>" alt="logo familia">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading"><strong>CIA, CLOW</strong></h4>
							<h5><strong>Ray ada clown y sus malabares</strong></h5>
							12:00h Casa de Cultura
						</div>
					</div>
					<div class="media">
						<div class="media-left media-middle">
							<a href="#"> <img class="media-object"
								src="<c:url value="/images/musica64.png"/>" alt="logo música">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							...
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-4 separador">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">D&iacute;a 2</h3>
					</div>
					<div class="media">
						<div class="media-left media-middle">
							<a href="#"> <img class="media-object"
								src="<c:url value="/images/musica64.png"/>" alt="logo música">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							...
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 separador">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">D&iacute;a 3</h3>
					</div>
					<div class="media">
						<div class="media-left media-middle">
							<a href="#"> <img class="media-object"
								src="<c:url value="/images/musica64.png"/>" alt="logo música">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							...
						</div>
					</div>
				</div>
			</div>




		</div>

	</div>


	<%@include file="common/footer.jsp"%>
</body>
</html>