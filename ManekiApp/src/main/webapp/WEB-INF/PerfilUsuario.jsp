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
         <!-- navbar -->
            <nav class="navbar navbar-expand-lg navbbarback" data-bs-theme="dark">
              <div class="container">
                <a class="navbar-brand d-flex align-items-center mx-auto" href="/herramientas">
                  <img src="/img/logoManeki.png" alt="Logo" width="50" height="50"
                    class="d-inline-block align-text-center iconmaneki">
                  <span class="ms-4 fs-2 raleway">Maneki Pymes</span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                  data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <form action="/procesar/logout">
                        <button class="btn btn-secondary ms-5 p-2 raleway" aria-current="page">Cerrar Sesión</button>
                      </form>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
        <section>
                <h2>Tu informacion</h2>
                <h5>${usuario.nombre} ${usuario.apellido}</h5>  
                <h5>${usuario.rut}</h5>
                <h5>${usuario.correo}</h5>
        </section>
        <!--<form action="/procesar/edicion" method="get">
        	<button type="submit">Edita tu perfil</button>
         </form>-->
	<div>
        <section>
            <h2>Tus Pymes</h2>
            <c:forEach var="pyme" items="${listaPymes}">
	        	<a href="/finanzas/${pyme.id}">${pyme.nombre}</a>
			</c:forEach>
            
        </section>
    </div>
</body>

</html>