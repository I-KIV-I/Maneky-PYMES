<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Finanza ${pyme.nombre}</title>
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
                <img th:src="${usuario.perfilImagen}" alt="imagen_perfil">
                <h5>Bienvenido,${nombreUsuario}</h5>
            </div>
        </header>
        <article>
            <ul>
                <c:forEach var="informes" items="${informes}"><li><p>hilo foros</p></li></c:forEach>
            </ul>
        </article>
        <article>
            <ul>
                <c:forEach var="informes" items="${informes}"><li><p>hilo foros</p></li></c:forEach>
            </ul>
        </article>
</body>
</html>