<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Foro!</title>
</head>
<body>
	<header>
		<h1>FORO</h1>
	</header>
	<main>
		<div>
			 <table>
			 		<tr>
			 			<th>
			 				<h2>Hilos Activos</h2>
			 			</th>
			 		</tr>
					<c:forEach var="hilo" items="${listaHilos }">
			 			<tr>
			 				<td><a href="/foro/${hilo.id }">${hilo.titulo}</a></td>			 	
			 			</tr>
			 		</c:forEach>
			 </table>
		</div>
		<h2>Crea tu Hilo aquí</h2>
		<form:form method="post"  action="/procesarforo" modelAttribute="formHilo">
			 <form:label path="titulo">Agrega un titulo para tu Hilo</form:label>
			 <form:input path="titulo" type="text" placeHolder="Escribe tu titulo aqui..."/>
			
			 <form:label path="contenido">Agrega el contenido aquí:</form:label>
			 <form:input type="textArea" path="contenido" placeHolder="Escribe tu comentario aqui..."/>
			
			 <button>Publicar</button>
		</form:form>
	</main>
	<footer>
	
	</footer>
</body>
</html>