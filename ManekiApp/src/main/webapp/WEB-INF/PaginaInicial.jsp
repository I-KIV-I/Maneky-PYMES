<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/carrusel.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Maneki Pymes</title>
</head>
<body>

<!-- navbar -->
<div class="container-fluid mainbackground">
  <nav class="navbar navbar-expand-lg bg-body-tertiary navbar bg-dark border-bottom border-body" 
  data-bs-theme="dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
      <img src="/img/logo2.jpeg" alt="Logo" width="60" height="50" class="d-inline-block align-text-center"> 
      Maneki Pymes</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active align-text-center" aria-current="page" href="/foro">Foro Público</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active align-text-center" aria-current="page" href="/login">Ingresa</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
    </div>
  </nav>
<!-- fin navbar -->


<!-- Carrusel -->
<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/pexels-rdne-7947663.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
      <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
        <h5 >Ten pleno control sobre tus finanzas</h5>
        <p>Aprende a menajar tu negocio con nuestras herramientas de finanzas y 
        asesorias sobre cómo llevar tu negocio</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/pexels-fauxels-3184418.jpg" class="d-block w-100 imgcarrusel" alt="Foro">
      <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
        <h5>Comparte y recibe ayuda!</h5>
        <p>Nuestro foro está dedicado para que todos los emprendedores compartan entre si y 
        tengan mejor acceso a ayudas financieras  y asesorías de sus propios rubros</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/empezar.jpg" class="d-block w-100 imgcarrusel" alt="Empezar pyme">
      <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
        <h5>¿Por dónde empiezo?</h5>
        <p>Registrate para poder recibir ayuda gratuita sobre cómo iniciar tu PYME</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/feria.jpg" class="d-block w-100 imgcarrusel" alt="Eventos">
      <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
        <h5>Participa en Actividades que impulsen tu negocio</h5>
        <p>En el foro para empresarios podrás encontrar todos los eventos relaciónados a tu 
        empresa que están ocurriendo en el país, ¡registrate en ellos para participar!</p>
      </div>
    </div>
        <div class="carousel-item">
      <img src="/img/proveedores.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
      <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
        <h5>Contacta fácilmente con proveedores</h5>
        <p>Te ofrecemos una lista de los mejores proveedores que trabajan con tu rubro, 
        para que se te sea más fácil competir con tus productos en el mercado </p>
      </div>
    </div>
        <div class="carousel-item">
      <img src="/img/cursos.jpg" class="d-block w-100 imgcarrusel" alt="Cursos">
      <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
        <h5>¡Accede a cursos gratuitos!</h5>
        <p>Te ofrecemos una lista de cursos gratuitos que puedes tomar para que aprendas 
        más sobre tu negocio y te especialices en el</p>
      </div>
    </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  </div>
  </div>
  <!-- fin Carrusel -->
  
  
  
  <!-- Cartas presentacion -->
  <div class="container overflow-hidden">
  <div class="row gy-5">
    <div class="col-6">
      <div class="card" style="width: 18rem;">
  <img src="/img/start.jpg" class="card-img-top" alt="Empieza la carrera">
  <div class="card-body">
    <h5 class="card-title">¡Empieza la carrera ya!</h5>
    <p class="card-text">Registrate con nosotros para que empieces ya mismo a planificar tu empresa. 
    Te contaremos todo lo que necesitas saber para empezar, solo necesitas de qué tratará tu negocio. ¡Manos a la obra!</p>
    <a href="/login" class="btn btn-success">Registrate</a>
  </div>
</div>
    </div>
    <div class="col-6">
      <div class="card" style="width: 18rem;">
  <img src="/img/foro.jpg" class="card-img-top" alt="Foro para empresas">
  <div class="card-body">
    <h5 class="card-title">¿Necesitas ayuda o se te acabaron las ideas?</h5>
    <p class="card-text"> Participa del foro para empresarios y comparte todo lo que te ayudó en tu negocio. 
    Además recibe ayuda de emprendedores de todo el país para lidiar con los sectores más difíciles de tu rubro. ¡Haz preguntas y recibe respuestas!</p>
    <a href="#" class="btn btn-success">Participar</a>
  </div>
</div>
    </div>
    <div class="col-6">
      <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
    </div>
    <div class="col-6">
      <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
    </div>
  </div>
</div>

  
  <!-- Footer -->
	<footer>
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
	</footer>
	
	
</div>
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>