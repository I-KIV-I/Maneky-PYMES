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
<title>Makeni Pymes</title>
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
		<h1>Maneki Pymes</h1> 
		<div>
		<a href="/maneki_pyme/inicio">Volver</a>
		</div>
	</header>
	<main>
		<h2>¿Ya Tienes una Pyme?</h2>
		<a href="/inscripcion/pyme">Si</a>
		<a href="/solicitud/informacion">No</a>
	</main>
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>