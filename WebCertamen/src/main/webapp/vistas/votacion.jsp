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
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

	<%@include file="common/menu.jsp"%>

	<div class="container separador marketing">
		<div class="row separador">
			<h1>VOTA TU GRUPO FAVORITO</h1>
		
		
		</div>
		<c:forEach items="${participantes}" var="participante">
			<div class="row separador">
				<h3><c:out value="${participante.nombreGrupo}"/></h3>
				<div class="col-lg-3 separador">
					<div class="thumbnail">
						<img class="media-object mx-auto"
							src="${pageContext.request.contextPath}/myImage/imageDisplay?id=${participante.id}" />
							
<!-- 						<div class="caption"> -->
							
<!-- 						</div> -->
					</div>
				</div>
				<div class="col-lg-9 separador">
					<p>
								${participante.cancion1}
							</p>
							<p>
								${participante.cancion2}
							</p>
							<p>
								${participante.cancion3}
							</p>
							<p>
								${participante.cancion4}
							</p>							
				</div>	
								<a href="#" class="btn btn-primary separador" role="button">Votar <c:out value="${participante.nombreGrupo}"/></a> 
				
			</div>
		</c:forEach>
	</div>
	<%@include file="common/footer.jsp"%>


</body>
</html>