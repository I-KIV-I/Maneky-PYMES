<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/Style.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/home.css">
    <title>Espacio De Trabajo</title>
</head>

<body>
	<div id="particles-js"></div>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbbarback" data-bs-theme="dark">
    	<div class="container text-white ">
	    	<div>
				<a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
					<img src="/img/logoManeki.png" alt="Logo" width="50" height="50" class="d-inline-block align-text-center iconmaneki"> 
				</a>
			</div>

			<form action="/procesar/logout"><button class="btn btn-outline-warning">Cerrar Sesion</button></form>
			<form action="/finanzas/opciones"><button class="btn btn-outline-warning">Finanzas</button></form>
			<form action="/foro"><button class="btn btn-outline-warning">Foro</button></form>
			<form action="/perfil"><button class="btn btn-outline-warning">Info Perfil/PYME</button></form>
			<form action="/noticias"><button class="btn btn-outline-warning">Noticias</button></form>
			
			<img th:src="${user.profileImageUrl}" alt="">
			<h5>Bienvenido ${nombreUsuario}</h5>
			 <div class="btn-group" role="group">
			    <button type="button" class="btn btn-outline-info dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
			      Mi cuenta
			    </button>
			    <ul class="dropdown-menu">
			      <li><a class="dropdown-item" href="#">Dropdown link</a></li> <!-- Mi Perfil -->
			      <li><a class="dropdown-item" href="#">Dropdown link</a></li> <!-- Mis pymes --><!-- logout -->
			    </ul>
			  </div>
		</div>
	</nav>
	<!-- fin navbar -->
	<div class="container mt-3">
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
</div>

	<div class="container mt-3 position-absolute start-50 translate-middle-x">
		<div class="row justify-content-center ">
			<div class="col-4" >
	<!-- Carrusel -->    	
			            <div id="carouselExampleAutoplaying" class="carousel slide mt-2 card2" data-bs-ride="carousel">
			                <div class="carousel-inner c-noticias">
			                    <!-- Primera -->
			                    <div class="carousel-item active">
			                        <img src="/img/empezar.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway">¿Por dónde empiezo?</h5>
			                            <p class="raleway">Registrate para poder recibir ayuda gratuita sobre cómo iniciar tu PYME
			                            </p>
			                        </div>
			                    </div>
			
			
			                    <!-- Segunda -->
			                    <div class="carousel-item">
			                        <img src="/img/foro.jpg" class="d-block w-100 imgcarrusel" alt="Foro">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-2">¡Comparte y recibe ayuda!</h5>
			                            <p class="raleway px-2">Nuestro foro está dedicado para que todos los emprendedores</p>
			                        </div>
			                    </div>
			
			
			                    <!-- Tercera -->
			                    <div class="carousel-item">
			                        <img src="/img/finanzas.jpg" class="d-block w-100 imgcarrusel" alt="Empezar pyme">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Usa nuestras herramientas de contabilidad</h5>
			                            <p class="raleway px-4">Aprende a menajar tu negocio</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Cuarta -->
			                    <div class="carousel-item">
			                        <img src="/img/ley.jpg" class="d-block w-100 imgcarrusel" alt="Eventos">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Recibe las noticias relacionadas a tu rubro</h5>
			                            <p class="raleway px-4">Echale un ojo a las nuevas normativas vigentes para tu negocio</p>
			                        </div>
			                    </div>
			
			                    <!-- Quinta -->
			                    <div class="carousel-item">
			                        <img src="/img/cursos.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">¡Accede a cursos gratuitos!</h5>
			                            <p class="raleway px-4">Te ofrecemos una lista de cursos gratuitos</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Sexta -->
			                    <div class="carousel-item">
			                        <img src="/img/feria.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Asiste a eventos para pequeños emprendedores</h5>
			                            <p class="raleway px-4">Accede a una lista de los eventos</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Septima -->
			                    <div class="carousel-item">
			                        <img src="/img/proveedores.jpg" class="d-block w-100 imgcarrusel" alt="Cursos">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Obten una lista de proveedores de tu área</h5>
			                            <p class="raleway px-4">Te ofrecemos una lista de los mejores proveedores</p>
			                        </div>
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
	
			       	<div class="bg-black bg-opacity-50 rounded text-white mt-5 p-2 card2">
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2 mensaje-preview">
				       		<h4>Titulo</h4>
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2">
				       		<h4> <a href="/foro/${uno.id}"> ${uno.titulo }</a></h4>
				       		<hr>

				       		<p class="">${uno.contenido}</p>	
			       		</div>
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2">
				       		<h4><a href="/foro/${uno.id}">${dos.titulo}</a></h4>
				       		<hr>
				       		<p>${dos.contenido}</p>
			       		</div>
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2">
				       		<h4><a href="/foro/${uno.id}">${tres.titulo }</a></h4>
				       		<hr>
				       		<p>${tres.contenido}</p>
			       		</div>
			       	</div>
	<!-- Final Mensajes Foro -->
			</div>
			<!-- Contenido Derecho -->
			<div class="col-7 text-center bg-black bg-opacity-50 rounded card2 mt-2 ms-4 py-3 ">

				<div class="row justify-content-around ">
					<div class="col-5">
						<div class="card text-center" style="width: 18rem;">
							<img src="/img/cursos.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
								    <h5 class="card-title">Card title</h5>
								    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								    <a href="#" class="btn btn-primary">Go somewhere</a>
							  </div>
						</div>
					</div>
					<div class="col-5">
						<div class="card text-center" style="width: 18rem;">
						 	<img src="/img/cursos.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
								    <h5 class="card-title">Card title</h5>
								    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								    <a href="#" class="btn btn-primary">Go somewhere</a>
							  </div>
						</div>
					</div>
				</div>
				<div class="row justify-content-around mt-3">
					<div class="col-4">	
						<div class="card text-center" style="width: 18rem;">
						  <img src="/img/cursos.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
								    <h5 class="card-title">Card title</h5>
								    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								    <a href="#" class="btn btn-primary">Go somewhere</a>
							  </div>
						</div>
					</div>
					<div class="col-5">	
						 <div class="card text-center" style="width: 18rem;">
						  	<img src="/img/cursos.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
								    <h5 class="card-title">Card title</h5>
								    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								    <a href="#" class="btn btn-primary">Go somewhere</a>
							  </div>
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
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
	<script src="/js/bootstrap.bundle.js"></script>
</body>


</html>