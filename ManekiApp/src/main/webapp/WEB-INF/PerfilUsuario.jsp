<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Perfil</title>
</head>

<body>
    <div>
        <header>
            <h3>Perfil, ${nombreUsuario}</h3>
            <form:form action="/procesar/logout" method="post">
            <button type="submit">Cerrar sesion</button>
            </form:form>
            
        </header>
        <section>
            <div th:if="${user.profileImageUrl != null}">
                <img th:src="${usuario.perfilImagen}" alt="imagen_usuario">
                <h5>${nombreUsuario}</h5>
            </div>
            <div>
                <p>Cambia tu imagen de perfil</p>
                <form method="post" enctype="multipart/form-data" th:action="@{/upload}">
                    <input type="file" name="image">
                    <input type="hidden" name="userId" th:value="${usuario.id}">
                    <button type="submit" class="btn btn-primary">Upload</button>
                </form>
            </div>
        </section>

        <section>
            <ul>
            	<c:forEach>
	                <li><div><a href="/finanzas/pyme/${pyme.id}"></a>${pyme.nombre}</div></li>
                </c:forEach>
            </ul>
        </section>
    </div>
</body>

</html>