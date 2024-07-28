<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<link rel="stylesheet" href="/css/Style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>¿Como te gustaria que fuera tu Pyme?</title>
</head>
<body>
	<form action="/procesar/informacion/temporal" method="post" modelAttribute="formTemp">
		<div>
			<label>Categoria PYME</label>
			<select>
				<c:forEach var="categoria" item="listaCategorias">
					
				</c:forEach>
			</select>
		</div>
	</form>
</body>
</html>