<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <nav class="navbar navbar-expand-lg bg-body-tertiary navbar bg-dark border-bottom border-body" data-bs-theme="dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
    </div>
  </nav>
</div>
	<header>
		<h1>Maneki Pymes</h1><!-- poner en estilo wapo -->
		<div>
			<!-- barra de busqueda -->
		</div>
	</header>
	<nav>
		<div><a href="/foro">Foro</a></div>
		<div><a href="/login">Ingresar como Pyme</a></div>
		<div><a href="/login_prov">ingresar como Proveedor</a></div>
	</nav>
	<main>
		<div>
			<h1>Cuadro con noticias de la pagina</h1>
		</div>
	</main>
	<footer>
		<h5>informacion legal de la organizacion "Maneki Pymes"</h5>
		<h5>contactos grupo "Maneki Pymes"</h5>
	</footer>

</body>
</html>