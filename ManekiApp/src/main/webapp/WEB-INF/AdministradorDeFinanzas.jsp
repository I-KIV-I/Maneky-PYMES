<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seleccion de PYME</title>
</head>
<body>
		<header>
            <div>
                <form action="/procesar/logout"><button>Cerrar Sesion</button></form>
                <form action="/finanzas/${idUsuario}"><button>Finanzas</button></form>
            </div>
            <div>
            	<form action="/perfil"><button>Info Perfil/PYME</button></form>
            </div>
            <div>
                <img th:src="${user.profileImageUrl}" alt="imagen_perfil">
                <h5>Bienvenido,${nombreUsuario}</h5>
            </div>
        </header>
        <article>
            <form:form action="procesar/finanzas/{pyme.id}">
                <form:select name="pymes">
                    <c:forEach var="pyme" items="${pymes}"> 
                        <form:option>${pyme.nombre}</form:option>
                    </c:forEach>
                </form:select>
                <button type="submit">info</button>
            </form:form>
        </article>
</body>
</html>