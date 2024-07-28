<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/Style.css">
<link rel="stylesheet" href="/css/home.css">
<meta charset="UTF-8">
<title>¿Como te gustaria que fuera tu Pyme?</title>
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
        <form action="/login">
          <button class="btn btn-outline-danger ms-5 p-2 raleway" aria-current="page">Cerrar Sesión</button>
          </form>
        </li>
      </ul>
    </div>
    </div>
  </nav>
<!-- fin navbar -->


	<header>
		<h1>Maneki Pyme</h1>
	</header>
	<h2>¿Nuevo en las pymes? ¡No hay problema! Te ayudamos</h2>
	<form action="/solicitud/informacion" method="post" modelAttribute="formTemp">
		<div>
			<label for="categoria">Categoría PYME</label>
			<select id="categoria" name="categoria.id">
				<c:forEach var="categoria" items="${listaCategorias}">
					<option value="${categoria.id}">${categoria.name}</option>
				</c:forEach>
			</select>
		</div>
		<div>
			<label for="capital">Posees capital para iniciar tu PYME?</label>
			<select id="capital" name="formTemp.capital">
				<option value="Si">Sí</option>
				<option value="No">No</option>
			</select>
		</div>
		<div>
			<label for="informacion">¿Quieres informacion para saber como manejar tu PYME?</label>
			<select id="informacion" name="formTemp.informacion">
				<option value="Si">Sí</option>
				<option value="No">No</option>
			</select>
		</div>
		<input type="submit" value="Guardar" />
	</form>
	
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
</body>
</html>