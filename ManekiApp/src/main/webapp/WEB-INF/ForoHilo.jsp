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
	 		<table>
			 		<tr>
			 			<th>
			 				<h1>${hilo.titulo}</h1>
			 			</th>
			 		</tr>
			 		<tr>
			 			<th>
			 				<h3>${hilo.contenido }</h3>
			 			</th>
			 		</tr>
					<c:forEach var="mensaje" items="${listaMensajes}">			 			
			 			<tr>
			 				<td>${mensaje.usuario.nombre}</td>			 	
			 				<fmt:formatDate value="${mensaje.updatedAt}" pattern="dd/MM/yyyy HH:mm" />		 	
			 							 	
			 			</tr>
			 			<tr>
			 				<td>${mensaje.contenido }</td>			 	
			 			</tr>
			 		</c:forEach>
			 </table>
			 <form:form method="post"  action="/foro/${hilo.id}" modelAttribute="formMensaje">
			 	<form:label path="contenido">Comenta algo:</form:label>
			 	<form:input type="textArea" path="contenido" placeHolder="Escribe tu comentario aqui..."/>
			 	<button>Publicar</button>
			 </form:form>
</body>
</html>