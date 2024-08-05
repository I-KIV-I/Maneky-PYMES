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
<form action="/foro">
<input class="backButton" type="submit" value="Volver Atrás">
</form>
<h1>${hilo.titulo}</h1>
    <h3>${hilo.contenido}</h3>
    <form:form method="post" action="/foro/${hilo.id}" modelAttribute="formMensaje">
        <form:label path="contenido">Comenta algo:</form:label>
        <form:input type="text" path="contenido" placeholder="Escribe tu comentario aquí..." />
        <button type="submit">Publicar</button>
    </form:form>
    <c:forEach var="mensaje" items="${listaMensajes}">
        <div>
            <p><strong>${mensaje.usuario.nombre} ${mensaje.usuario.apellido}</strong></p>
            <p>${mensaje.contenido}</p>
            <p><em>${mensaje.updatedAt}</em></p>
        </div>
    </c:forEach>
</body>
</html>