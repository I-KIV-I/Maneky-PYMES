<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/tramites.css">
<link rel="stylesheet" href="/css/Style.css">
<meta charset="UTF-8">
<title>Empieza!</title>
</head>
<body>
<div id="particles-js"></div>
<nav class="navbar navbar-expand-lg tramitesNavbar" data-bs-theme="dark">
    <div class="container justify-content-between">
      <a class="navbar-brand d-flex align-items-center mx-auto" href="/">
	      <img src="/img/logoManeki.png" alt="Logo" width="50" height="50" 
	      class="d-inline-block align-text-center iconmaneki"> 
	      <span class="ms-4 fs-2">Maneki Pymes</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        </li>
      </ul>
      <div>
      	<span class="navbar-text">
        	<form action="/procesar/logout">
          		<button class="logoutButton2" aria-current="page">Cerrar Sesión</button>
          	</form>
      	</span>
      </div>
    </div>
    </div>
  </nav>
<!-- fin navbar -->

<div class="textContainer">
		<div class='console-container'>
			<span id='text'></span>
			<div class='console-underscore' id='console'>&#95;</div>
		</div>
		<img src="/img/LogoManeki.png" class="w-20 mb-4 imgLogo" alt="logo maneki pymes">
	</div>
	<div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #00131D;"></path></svg></div>
<!-- Cartas -->
<div class="d-block bkground">
	<!-- Fila 1 -->
	<div class="cartasBox">
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
					<h3>EMPEZEMOS</h3>
					<p>        </p>
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
					<h3>FINANZAS</h3>
					<p>   </p>
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
					<h3>BONOS</h3>
					<p>    </p>
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
					<h3>PERMISOS</h3>
					<p>     </p>
				</div>
			</div>
		</div>
	
		
		<!-- Carta 1 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/document.svg">
					<h3>Tramite 5</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<h3>IMPUESTOS</h3>
					<p>     </p>
				</div>
			</div>
		</div>
		
		<!-- Carta 2 -->
		<div class="card">
			<div class="face face1">
				<div class="content">
					<img src="/img/thumb.svg">
					<h3>Tramite 6</h3>
				</div>
			</div>
			<div class="face face2">
				<div class="content">
					<h3>MERCADO</h3>
					<p>   </p>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<!-- Texto -->
	<div class="textBox">
	<div class="textContainer2">
		<h3>Cuando hayas completado
		 los trámites para iniciar tu Pyme, ¡Inscribela!</h3>
	</div>
	<div class="textContainer3">
		 <form action="/inscripcion/pyme">
			<button class="button">Inscribir mi PYME</button>
		 </form>
	</div>
	</div>
	
	<!-- Footer -->
<div>
	<ul class="nav justify-content-center bg-dark bg-opacity-50 mt-0">
		<li class="nav-item">
    		<a class="nav-link active text-white" aria-current="page" href="#">Contáctanos</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link text-white" href="#">Saber más</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link text-white" href="#">Donaciones</a>
  		</li>
	</ul>
</div>
</div>


<script src="/particles/particles.js"></script>
<script src="/particles/data/app.js"></script>	
<script src="/js/bootstrap.bundle.js"></script>
<script src="/js/tramites.js"></script>
</body>
</html>