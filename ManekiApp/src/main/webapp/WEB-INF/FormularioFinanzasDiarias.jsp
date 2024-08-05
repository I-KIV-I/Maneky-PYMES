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
<link rel="stylesheet" href="/css/form.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Informe Diario</title>
</head>
<body>
<div id="particles-js"></div>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-4 px-5 py-4 my-5 text-center position-absolute bck" >
				<header>
					<h2 class="mb-4">Te Ayudamos con tus finanzas</h2>
				</header>
				
				<form:form action="/finanzas/informe/diario" method="post" modelAttribute="form">
							<div class="flex form">
								<form:label class="form-label" path="fechaInformeDiario"><strong>Fecha Informe:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="fechaInformeDiario" type="date"/>
								<form:errors class="alert alert-danger" path="fechaInformeDiario"/>
							</div>  
							<div class="flex form">
								<form:label class="form-label" path="ingresoTotalDiario"><strong>Ingreso iario:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="ingresoTotalDiario" type="number"/>
								<form:errors class="alert alert-danger" path="ingresoTotalDiario"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="CPV"><strong>Costo Productos Vendidos:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="CPV" type="number"/>
								<form:errors class="alert alert-danger" path="CPV"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="gastosDeOperacion"><strong>Gastos Operacionales:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="gastosDeOperacion" type="number"/>
								<form:errors class="alert alert-danger" path="gastosDeOperacion"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="impuestos"><strong>Impuestos:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="impuestos" type="number" value="${form.impuestos}"/>
								<form:errors class="alert alert-danger" path="impuestos"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="gananciaNeta"><strong>Ganancia Neta:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="gananciaNeta" type="number" value="${form.gananciaNeta}"/>
								<form:errors class="alert alert-danger" path="gananciaNeta"/>
							</div>
							
							<button class="ingresarButton">ingresar Datos</button>
						</form:form>
							<input class="backButton" type="button" value="Volver Atrás" onClick="history.go(-1);">
						
				</main>
			</div>
		</div>
	</div>

	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
</body>
</html>