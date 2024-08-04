<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/workbench.css">
    <title>Espacio De Trabajo</title>
</head>

<body>
<div class="barContainer">
	<div class="navigation">
		<ul>
			<li>
				<a href="/herramientas">
					<span class="icon"><img src="/img/LogoManeki.png" alt="logo" class="logo"></span>
					<span class="title"><strong>Maneki Pymes</strong></span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><img src="/img/profile.svg" alt="icono profile"></span>
					<span class="title">Perfil</span>
				</a>
			</li>
			<li>
				<a href="/finanzas/opciones">
					<span class="icon"><img src="/img/finances.svg" alt="icono"></span>
					<span class="title">Finanzas</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><img src="/img/news.svg" alt="icono"></span>
					<span class="title">Noticias</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><img src="/img/people.svg" alt="icono"></span>
					<span class="title">Foro</span>
				</a>
			</li>
			<li>
				<a href="/procesar/logout">
					<span class="icon"><img src="/img/logout.svg" alt="icono"></span>
					<span class="title">Cerrar Sesión</span>
				</a>
			</li>
		</ul>
	</div>
</div>


<div class="main">
	<div class="topbar">
		<div class="toggle">
			<img src="/img/toggle.svg" alt="toggle">
		</div>
		<div class="search">
			<h1>Bienvenido username</h1>
		</div>
		<div class="user">
			<img src="/img/pfp5.jpg" alt="profile pic">
		</div>
	</div>	

	  <%-- <div class="container mt-3">
    <p>Revisa los reportes diarios o mensuales de tu negocio</p>
    <c:choose>
        <c:when test="${condicion}">
            <article class="navbar">
                <form:form modelAttribute="listaPyme" action="finanzas/${pyme.id}" method="get">
                    <form:select path="${pyme.id}" class="form-select" aria-label="Default select example">
                        <form:option value="">Aquí puedes ver las finanzas de tu negocio, selecciona una para comenzar.</form:option>
                        <c:forEach var="pyme" items="${listaPyme}">
                            <form:option value="${pyme.id}">${pyme.nombre}</form:option>
                        </c:forEach>
                    </form:select>
                    <button type="submit" class="btn btn-outline-warning">Finanzas Pyme</button>
                </form:form>
            </article>
        </c:when>
        <c:otherwise>
            <article class="navbar">
                <section>
                    <div class="form-select" aria-label="Multiple select example">
                        <p>No tienes PYMES registradas</p>
                    </div>
                </section>
                <form action="/inscripcion/pyme" method="get">
                    <button type="submit" class="btn btn-outline-info">Inscribre tu pyme acá</button>
                </form>
                <p>o infórmate acá</p>
                <form action="/guiaCrearPyme" method="get">
                    <button type="submit" class="btn btn-outline-info">Información</button>
                </form>
            </article>
        </c:otherwise>
    </c:choose>
</div> --%>



		<div class="row justify-content-center">
			<div class="col-5" >
				<!-- Carrusel -->    	
			    <div id="carouselExampleAutoplaying" class="carousel slide mt-2 card2" data-bs-ride="carousel">
			    	<div class="carousel-inner c-noticias">
			        	
			        	<div class="carousel-item active">
			            	<img src="/img/noticia1.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia2.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia3.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia4.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia5.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            
			            <!--Botones Carrusel -->
			            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
			            data-bs-slide="prev">
			            	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			                <span class="visually-hidden">Previous</span>
			            </button>
			           	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
			            data-bs-slide="next">
			                <span class="carousel-control-next-icon" aria-hidden="true"></span>
			                <span class="visually-hidden">Next</span>
			            </button>
			    	</div>
				</div>
				<!-- fin Carrusel -->
	
	<!-- Mensajes Foro -->
		<div class="recentChat">
			<div class="Header">
				<h2>Últimas conversaciones</h2>
			</div>
			<table>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp1.jpg">
							</div>
						</td>
						<td>
							<h4><a href="/foro/${uno.id}"> ${uno.titulo} Cómo consiguieron más clientes</a></h4>
							<p>${uno.contenido} Estoy teniendo un problema con conseguir más clientes...</p>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp2.jpg">
							</div>
						</td>
						<td>
							<h4><a href="/foro/${dos.id}"> ${dos.titulo} Vendedor de Sopaipillas</a></h4>
							<p>${dos.contenido} Estoy buscando donde ganarme ¿alguna sugerencia?...</p>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp4.jpg">
							</div>
						</td>
						<td>
							<h4><a href="/foro/${tres.id}"> ${tres.titulo} ¿Que piensan de los impuestos?</a></h4>
							<p>${tres.contenido} No sé si ya vieron las últimas noticias sobre la alza...</p>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp6.jpg">
							</div>
						</td>
						<td>
							<h4><a href="/foro/${cuatro.id}"> ${cuatro.titulo} ¡No te rindas!</a></h4>
							<p>${cuatro.contenido} Un mensajito para todos los nuevos emprendedores, no te...</p>
						</td>
					</tr>
				</table>
			</div>
	<!-- Final Mensajes Foro -->
	
	
			</div>
			<!-- Contenido Derecho -->
			<div class="col-5 text-center mt-2 ms-4">
					<div class="col-3 mb-4">
						<div class="card text-center" style="width: 30rem; height: 24rem;">
							<img src="/img/forge.jpg" class="card-img-top" alt="..." style="height: 55%;">
							  <div class="card-body">
								    <h5 class="card-title">¡Curso nuevo!</h5>
								    <p class="card-text">Aprovecha esta oportunidad que ofrece la Fundación
								    Forge para especializarte en programación</p>
								    <a href="#" class="backButton">Ir a Forge</a>
							  </div>
						</div>
					</div>
					
					<div class="col-1">
						<div class="card text-center" style="width: 30rem; height: 24rem;">
						 	<img src="/img/santander.jpg" class="card-img-top" alt="..." style="height: 55%;">
							  <div class="card-body">
								    <h5 class="card-title">Postulación a Fondos</h5>
								    <p class="card-text">Banco Santander ofrece una inversion para pequeñas Pymes
								    que hayan iniciado actividades hace menos de 5 meses</p>
								    <a href="#" class="backButton">Ir a Santander</a>
							  </div>
						</div>
					</div>
				<!--FINAL Contenido Derecho -->	
			</div>
		</div>
	</div>
  <!-- Footer -->
<div class="footer-position">
	<ul class="nav justify-content-center bg-dark bg-opacity-50">
		<li class="nav-item">
    		<a class="nav-link active text-white" aria-current="page" href="#">Háblanos</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link text-white" href="#">Acerca de</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link disabled" aria-disabled="true">Donaciones</a>
  		</li>
	</ul>
</div>		
<script src="/js/workbench.js"></script>
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>