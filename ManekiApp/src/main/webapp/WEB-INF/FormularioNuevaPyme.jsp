<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Style.css">
<link rel="stylesheet" href="/css/form.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Inscribir Empresa</title>
</head>
<body>
<div id="particles-js"></div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6 px-5 py-4 my-5 text-center position-relative bck">
            <header>
                <h1 class="mb-4">Maneki Pymes</h1>
                <img src="/img/LogoManeki.png" class="w-25 mb-4 mt-2" alt="logo maneki pymes">
            </header>
            <h2 class="mb-4">Inscribe tu pyme</h2>
            <form:form action="/inscripcion/pyme" method="post" modelAttribute="formPyme">
                <div class="mb-3">
                    <form:label class="form-label" path="nombre"><strong>Nombre Pyme:</strong></form:label>
                    <form:input class="form-control mb-4 text-center" path="nombre" type="text"/>
                    <form:errors class="text-danger" path="nombre"/>
                </div>
                <div class="mb-3">
                    <form:label class="form-label" path="rol"><strong>Rol:</strong></form:label>
                    <form:input class="form-control mb-4 text-center" path="rol" type="text" placeholder="xx.xxx.xxx-x"/>
                    <form:errors class="text-danger" path="rol"/>
                </div>
                <div class="mb-3">
                    <form:label class="form-label" path="ubicacion"><strong>Ubicación:</strong></form:label>
                    <form:input id="ubicacion" class="form-control mb-4 text-center" path="ubicacion" type="text"/>
                    <form:errors class="text-danger" path="ubicacion"/>
                </div>
                <div class="mb-3">
                    <form:label class="form-label" path="rutCreador"><strong>Rut Creador:</strong></form:label>
                    <form:input id="rutCreador" class="form-control mb-4 text-center" placeholder="12.345.678-9" path="rutCreador" type="text"/>
                    <form:errors class="text-danger" path="rutCreador"/>
                </div>
                <div class="mb-3">
                    <form:label class="form-label" path="fechaCreacionEmpresa"><strong>Fecha Creación:</strong></form:label>
                    <form:input class="form-control mb-4 text-center" path="fechaCreacionEmpresa" type="date"/>
                    <form:errors class="text-danger" path="fechaCreacionEmpresa"/>
                </div>
                <button class="ingresarButton">Registrar</button>
            </form:form>
            <input class="backButton" type="button" value="Volver Atrás" onClick="history.go(-1);">
            <div class="mt-2">
                <a class="backButton" href="/herramientas">Saltar</a>
            </div>
        </div>
    </div>
</div>

<script src="/particles/particles.js"></script>
<script src="/particles/data/app.js"></script>
<script>
    function formatRut(rut) {
        // Eliminar todos los caracteres que no sean números y letras
        rut = rut.replace(/[^0-9kK]/g, '');

        // Agregar el guion antes del dígito verificador
        let rutBody = rut.slice(0, -1);
        let rutDv = rut.slice(-1).toUpperCase();

        // Agregar puntos cada 3 dígitos
        rutBody = rutBody.replace(/\B(?=(\d{3})+(?!\d))/g, '.');

        // Formatear el RUT completo
        return rutBody + '-' + rutDv;
    }

    function handleInput(event) {
        let input = event.target;
        input.value = formatRut(input.value);
    }

    document.addEventListener('DOMContentLoaded', function () {
        const rutInputs = document.querySelectorAll('#rutCreador, #rutPyme');
        rutInputs.forEach(input => input.addEventListener('input', handleInput));
    });
</script>
</body>
</html>
