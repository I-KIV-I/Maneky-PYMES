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
                <img th:src="${usuario.perfilImagen}" alt="imagen_perfil">
                <h5>Bienvenido,${nombreUsuario}</h5>
            </div>
        </header>
        <article>
            <section>
                <ul>
                    <c:forEach var="informes" items="${informes}">
                        <li><div><a href="/finanzas/pyme/${pyme.id}"></a>${informes}</div></li>
                    </c:forEach>
                </ul>
            </section>
        </article>
</body>
</html>