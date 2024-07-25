<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- navbar -->
<div class="container">
<div class="container">
  <nav class="navbar navbar-expand-lg bg-body-tertiary navbar bg-dark border-bottom border-body" 
  data-bs-theme="dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Maneki Pymes</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/foro">Foro Público</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/login">Ingresa!</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/login_prov">Registrate</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
    </div>
  </nav>
</div>
<!-- fin navbar -->


<!-- Carrusel -->
<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/finanzas.jpg" class="d-block w-100" alt="Finanzas">
    </div>
    <div class="carousel-item">
      <img src="/img/empezar.jpg" class="d-block w-100" alt="Foro">
    </div>
    <div class="carousel-item">
      <img src="/img/feria.jpg" class="d-block w-100" alt="Redes de apoyo">
    </div>
        <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="Cursos">
    </div>
        <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="Eventos">
    </div>
        <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="Noticias">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="Consejos">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="Inventario">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="Proveedores">
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
	<main>
		<div>
			<h1>Cuadro con noticias de la pagina</h1>
		</div>
	</main>
	<footer>
		<h5>informacion legal de la organizacion "Maneki Pymes"</h5>
		<h5>contactos grupo "Maneki Pymes"</h5>
	</footer>
</div>
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>