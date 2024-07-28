<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<title>Makeni Pymes</title>
</head>
<body>
<div id="particles-js"></div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-4 px-5 py-4 my-5 text-center bg-black bg-opacity-50 rounded text-white position-absolute " >
				<header>
					<h1>Maneki Pymes</h1> 
					<img src="/img/LogoManeki.png" class="w-25 mb-4" alt="logo maneki pymes">
				</header>
				<main class="p-5 rounded bg-black bg-opacity-50">
					<h2>¿Ya Tienes una Pyme?</h2>
					<div class="row my-5 justify-content-center ">
						<div class="col-4">
							<a class="btn btn-outline-success" href="/inscripcion/pyme">Si</a>
						</div>
						<div class="col-4">
							<a class="btn btn-outline-danger" href="/solicitud/informacion">No</a>
						</div>
					</div>
				</main>
				<div class="mt-5">
					<a class="btn btn-outline-secondary" href="/maneki_pyme/inicio">Volver</a>
				</div>
			</div>
		</div>
	</div>
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
</body>
</html>