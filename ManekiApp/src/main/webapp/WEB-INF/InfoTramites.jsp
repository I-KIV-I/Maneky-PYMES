<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/tramites.css">
<meta charset="UTF-8">
<title>Empieza!</title>
</head>
<body>


<!-- navbar -->
  <nav class="navbar navbar-expand-lg navbbarback" 
  data-bs-theme="dark">
    <div class="container">
      <a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
	      <img src="/img/logoManeki.png" alt="Logo" width="50" height="50" 
	      class="d-inline-block align-text-center iconmaneki"> 
	      <span class="ms-4 fs-2 raleway">Maneki Pymes</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <form action="/procesar/logout">
          <button class="btn btn-secondary ms-5 p-2 raleway" aria-current="page">Cerrar Sesión</button>
          </form>
        </li>
      </ul>
    </div>
    </div>
  </nav>
<!-- fin navbar -->


<!-- Cartas -->
<div class="container2 d-block">
	<div class="textContainer">
		<div class='console-container'>
			<span id='text'></span>
			<div class='console-underscore' id='console'>&#95;</div>
		</div>
		<img src="/img/LogoManeki.png" class="w-20 mb-4 imgLogo" alt="logo maneki pymes">
	</div>
	
	<!-- Fila 1 -->
	<div class="cartasContainer">
	
		<!-- Carta 1 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/cohete.svg">
					<h3>Tramite 1</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 1: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
		
		<!-- Carta 2 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/pie.svg">
					<h3>Tramite 2</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 2: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
		
		<!-- Carta 3 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/bank.svg">
					<h3>Tramite 3</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 3: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
		
		<!-- Carta 4 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/column.svg">
					<h3>Tramite 4</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 3: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Fila 2 -->
	<div class="cartasContainer">
		
		<!-- Carta 1 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/document.svg">
					<h3>Tramite 1</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 1: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
		
		<!-- Carta 2 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/thumb.svg">
					<h3>Tramite 2</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 2: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
		
		<!-- Carta 3 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/business.svg">
					<h3>Tramite 3</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 3: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
		
		<!-- Carta 4 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/creativity.svg">
					<h3>Tramite 4</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<p>info tramite 3: tienes que hacer esto!</p>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Texto -->
	<div class="textContainer">
		<h3 class="text-white bg-black bg-opacity-50 rounded p-3 hoverme">Cuando hayas completado
		 los trámites para iniciar tu Pyme, ¡Inscribela!</h3>
	</div>
	<div class="textContainer">
		 <form action="/inscripcion/pyme">
		 <button type="button" class="btn btn-success btn-lg">Inscribir mi PYME</button>
		 </form>
	</div>
</div>







<!-- Footer -->
<div>
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

<script src="/js/bootstrap.bundle.js"></script>
<script src="/js/tramites.js"></script>
</body>
</html>