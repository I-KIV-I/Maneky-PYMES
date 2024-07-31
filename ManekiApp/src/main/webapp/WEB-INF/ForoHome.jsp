<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Foro!</title>
</head>
<body>
	<header>
		<h1>FORO</h1>
	</header>
	<main>
		<div>
			 	<table>
			 		<tr>
			 			<th><h2>Hilos Activos</h2></th>
			 		</tr>
					<c:forEach var="hilo" items="${listaHilos }">
			 			<tr>
			 				<td><a href="/foro/{hilo.id }">${hilo.titulo}</a></td>			 	
			 			</tr>
			 		</c:forEach>
			 	</table>
		</div>
	</main>
	<footer>
	
	</footer>
</body>
</html>