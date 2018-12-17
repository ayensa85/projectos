
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
	<div class="container separador marketing">
		<div class="row">
			<div class="centrado separador">
				<img alt="" src="<c:url value="/images/22certamen_web1.jpg"/>"
					class="img-responsive centrado separador" />
			</div>
		</div>
		<div class="row separador">

			<form:form modelAttribute="participante" method="POST"
				action="${pageContext.request.contextPath}/certamen/bases/participar/guardarParticipante"
				class="form-horizontal">
				<div class="col-lg-12 col-md-offset-2">
					<div class="form-group">
						<label for="nombreGrupo" class="control-label col-xs-2">Nombre
							Grupo:</label>
						<div class="col-xs-6">
							<form:input path="nombreGrupo" class="form-control"
								placeholder="Nombre Grupo" />
									<form:errors path="nombreGrupo" cssStyle="color:red" />
						</div>
					</div>
					<div class="form-group">
						<label for="nombre" class="control-label col-xs-2">Nombre
							contacto:</label>
						<div class="col-xs-6">
							<form:input path="nombre" class="form-control" 
								placeholder="nombre contacto" />
								<form:errors path="nombre" cssStyle="color:red"/>
						</div>
					</div>
					<div class="form-group">
						<label for="provincia" class="control-label col-xs-2">Provincia</label>
						<div class="col-xs-6">
							<form:select path="provincia" class="form-control"
								placeholder="provincia">
								<option value='alava'>Álava</option>
								<option value='albacete'>Albacete</option>
								<option value='alicante'>Alicante/Alacant</option>
								<option value='almeria'>Almería</option>
								<option value='asturias'>Asturias</option>
								<option value='avila'>Ávila</option>
								<option value='badajoz'>Badajoz</option>
								<option value='barcelona'>Barcelona</option>
								<option value='burgos'>Burgos</option>
								<option value='caceres'>Cáceres</option>
								<option value='cadiz'>Cádiz</option>
								<option value='cantabria'>Cantabria</option>
								<option value='castellon'>Castellón/Castelló</option>
								<option value='ceuta'>Ceuta</option>
								<option value='ciudadreal'>Ciudad Real</option>
								<option value='cordoba'>Córdoba</option>
								<option value='cuenca'>Cuenca</option>
								<option value='girona'>Girona</option>
								<option value='laspalmas'>Las Palmas</option>
								<option value='granada'>Granada</option>
								<option value='guadalajara'>Guadalajara</option>
								<option value='guipuzcoa'>Guipúzcoa</option>
								<option value='huelva'>Huelva</option>
								<option value='huesca'>Huesca</option>
								<option value='illesbalears'>Illes Balears</option>
								<option value='jaen'>Jaén</option>
								<option value='acoruña'>A Coruña</option>
								<option value='larioja'>La Rioja</option>
								<option value='leon'>León</option>
								<option value='lleida'>Lleida</option>
								<option value='lugo'>Lugo</option>
								<option value='madrid'>Madrid</option>
								<option value='malaga'>Málaga</option>
								<option value='melilla'>Melilla</option>
								<option value='murcia'>Murcia</option>
								<option value='navarra'>Navarra</option>
								<option value='ourense'>Ourense</option>
								<option value='palencia'>Palencia</option>
								<option value='pontevedra'>Pontevedra</option>
								<option value='salamanca'>Salamanca</option>
								<option value='segovia'>Segovia</option>
								<option value='sevilla'>Sevilla</option>
								<option value='soria'>Soria</option>
								<option value='tarragona'>Tarragona</option>
								<option value='santacruztenerife'>Santa Cruz de
									Tenerife</option>
								<option value='teruel'>Teruel</option>
								<option value='toledo'>Toledo</option>
								<option value='valencia'>Valencia/Valéncia</option>
								<option value='valladolid'>Valladolid</option>
								<option value='vizcaya'>Vizcaya</option>
								<option value='zamora'>Zamora</option>
								<option value='zaragoza'>Zaragoza</option>
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label for="componentes" class="control-label col-xs-2">Numero
							de componentes</label>
						<div class="col-xs-6">
							<form:select path="componentes" class="form-control"
								 placeholder="provincia">
								<option value='1'>1</option>
								<option value='2'>2</option>
								<option value='3'>3</option>
								<option value='4'>4</option>
								<option value='5'>5</option>
								<option value='6'>6</option>
								<option value='7'>7</option>
								<option value='8'>8</option>
								<option value='9'>9</option>
								<option value='10'>10</option>
								<option value='11'>11</option>
								<option value='12'>12</option>
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label for="telefono" class="control-label col-xs-2">Telefono
							de contacto:</label>
						<div class="col-xs-6">
							<form:input path="telefono" class="form-control"
								placeholder="telefono" />
								<form:errors path="telefono" cssStyle="color:red"/>
						</div>
					</div>
				
					<div class="form-group">
						<label for="telefono" class="control-label col-xs-2">email:</label>
						<div class="col-xs-6">
							<form:input path="email" class="form-control"
								placeholder="email" />
								<form:errors path="email" cssStyle="color:red"/>
						</div>
					</div>
					<div class="form-group">
						<label for="youtube" class="control-label col-xs-2">Canal
							de youtube</label>
						<div class="col-xs-6">
							<form:input path="youtube" class="form-control"
								placeholder="youtube" />
						</div>
					</div>
					<div class="form-group">
						<label for="intagram" class="control-label col-xs-2">Canal
							de instagram</label>
						<div class="col-xs-6">
							<form:input path="intagram" class="form-control"
								placeholder="instagram" />
						</div>
					</div>
					<div class="form-group">
						<label for="facebook" class="control-label col-xs-2">Canal
							de facebook</label>
						<div class="col-xs-6">
							<form:input path="facebook" class="form-control"
								placeholder="facebook" />
						</div>
					</div>
					<div class="form-group">
						<label for="twitter" class="control-label col-xs-2">Canal
							de twitter</label>
						<div class="col-xs-6">
							<form:input path="twitter" class="form-control"
								placeholder="twitter" />
						</div>
					</div>
					<div class="form-group">
						<label for="cancion1" class="control-label col-xs-2">Canción
							1</label>
						<div class="col-xs-6">
							<form:input path="cancion1" class="form-control"
								placeholder="cancion1" />
								<form:errors path="cancion1" cssStyle="color:red"/>
						</div>
					</div>
					<div class="form-group">
						<label for="cancion2" class="control-label col-xs-2">Canción
							2</label>
						<div class="col-xs-6">
							<form:input path="cancion2" class="form-control"
								placeholder="cancion2" />
								<form:errors path="cancion2" cssStyle="color:red"/>
						</div>
					</div>
					<div class="form-group col-md-offset-2">
						<label for="cancion3" class="control-label col-xs-2">Canción
							3</label>
						<div class="col-xs-6">
							<form:input path="cancion3" class="form-control"
								placeholder="cancion3" />
								<form:errors path="cancion3" cssStyle="color:red"/>
						</div>
					</div>
					<div class="form-group">
						<label for="cancion4" class="control-label col-xs-2">Canción
							4</label>
						<div class="col-xs-6">
							<form:input path="cancion4" class="form-control"
								placeholder="cancion4" />
								<form:errors path="cancion4" cssStyle="color:red"/>
						</div>
					</div>
					<div class="form-group">
						<label for="pic" class="control-label col-xs-2">Foto</label>
						<div class="col-xs-3">
							<form:input path="pic" class="form-control" type="file"
								placeholder="pic" />
							<form:errors path="pic" cssStyle="color:red"/> 	
						</div>
					</div>


				</div>
				<c:choose>
					<c:when test="${empty grupoInscrito}">
						<div class="row marketing separador"></div>

					</c:when>
					<c:when test="${grupoInscrito.correcto eq 1}">
						<div class="row marketing separador">

							<div class="alert alert-success" role="alert">Grupo
								Inscrito con éxito</div>
						</div>
					</c:when>
				</c:choose>
				<div class="row marketing separador">
					<input class="btn btn-primary btn-lg" type="submit"
						value="Inscribirse" />
				</div>
			</form:form>

		</div>
	</div>
	<%@include file="common/footer.jsp"%>
</body>
</html>