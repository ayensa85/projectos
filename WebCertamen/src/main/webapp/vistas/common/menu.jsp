<div class="navbar-wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${pageContext.request.contextPath}/certamen/inicio"><div class="col-lg-1"> <img alt="certamen" src="<c:url value="/images/logocertamen2.png"/>"/></div></a>
					
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><spring:message code="menu.certamen"/><span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/certamen/elfestival"><spring:message code="menu.certamen.festival"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/asociacion"><spring:message code="menu.certamen.asociacion"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/comollegar"><spring:message code="menu.certamen.llegar"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/alojamiento"><spring:message code="menu.certamen.alojamiento"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/bases"><spring:message code="menu.participar"/></a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><spring:message code="menu.certamen.artistas"/><span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/certamen/grupo1"><spring:message code="menu.certamen.grupo1"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo2"><spring:message code="menu.certamen.grupo2"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo3"><spring:message code="menu.certamen.grupo3"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo4"><spring:message code="menu.certamen.grupo4"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo5"><spring:message code="menu.certamen.grupo5"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo6"><spring:message code="menu.certamen.grupo6"/></a></li>
								<li role="separator" class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo7"><spring:message code="menu.certamen.grupo7"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo8"><spring:message code="menu.certamen.grupo8"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo9"><spring:message code="menu.certamen.grupo9"/></a></li>
								<li><a href="${pageContext.request.contextPath}/certamen/grupo10"><spring:message code="menu.certamen.grupo10"/></a></li>
							</ul></li>
							<li><a href="${pageContext.request.contextPath}/certamen/votatugrupo"><spring:message code="menu.presentados"/></a></li>
					<li><a href="${pageContext.request.contextPath}/certamen/horarios"><spring:message code="menu.horarios"/></a></li>
					<li><a href="https://es.patronbase.com/_SanAdrian/Productions/"><spring:message code="menu.entradas"/></a></li>
					<li><a href="${pageContext.request.contextPath}/certamen/login"><spring:message code="menu.login"/></a></li>
					
						
					</ul>
					
					
						
				</div>
				<!-- /.navbar-collapse -->
			</div>
		
			<!-- /.container-fluid -->
		</nav>

	
</div>
