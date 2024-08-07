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
<title>Registro</title>
</head>
<body class="registerBody">
    <div id="particles-js"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 px-5 py-4 my-2 text-center position-absolute bck">
                <h1>Maneki Pymes</h1>
                <img src="/img/LogoManeki.png" class="w-25 mb-4" alt="logo maneki pymes">
                <div>
                    <h2 class="mb-4">Registro</h2>
                    <form:form action="/procesar_registro" method="post" modelAttribute="formRegistro">
                        <div>
                            <form:label class="form-label" path="nombre"><strong>Nombre</strong></form:label>
                            <form:input class="form-control mb-4 text-center" placeholder="Nombre" path="nombre" type="text"/>
                            <div>
                                <form:errors class="alert alert-danger" path="nombre"/>
                            </div>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="apellido"><strong>Apellido</strong></form:label>
                            <form:input class="form-control mb-4 text-center" placeholder="Apellido" path="apellido" type="text"/>
                            <div>
                                <form:errors class="alert alert-danger" path="apellido"/>
                            </div>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="rut"><strong>RUT</strong></form:label>
                            <form:input class="form-control mb-4 text-center" placeholder="12.345.678-9" path="rut" type="text" oninput="handleInput(event)"/>
                            <div>
                                <form:errors class="alert alert-danger" path="rut"/>
                            </div>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="fechaNacimiento"><strong>Fecha De Nacimiento</strong></form:label>
                            <form:input class="form-control mb-4 text-center" path="fechaNacimiento" type="date"/>
                            <div>
                                <form:errors path="fechaNacimiento"/>
                            </div>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="genero"><strong>Género</strong></form:label>
                            <form:select class="form-select text-center" path="genero" label="Seleccione">
                                <form:option value="" label="Seleccione"/>
                                <form:option value="Masculino" label="Masculino"/>
                                <form:option value="Femenino" label="Femenino"/>
                                <form:option value="Neutral" label="Otro"/>
                            </form:select>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="correo"><strong>Email</strong></form:label>
                            <form:input class="form-control mb-4 text-center" placeholder="Correo" path="correo" type="text"/>
                            <div>
                                <form:errors class="alert alert-danger" path="correo"/>
                            </div>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="contrasenia"><strong>Contraseña</strong></form:label>
                            <div class="password-wrapper">
                                <form:input class="form-control mb-4 text-center" id="password-field" placeholder="Contraseña" path="contrasenia" type="password"/>
                                <div class="toggle-button rounded-circle">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="eye-icon">
                                        <path d="M12 15a3 3 0 100-6 3 3 0 000 6z" />
                                        <path fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z" clip-rule="evenodd" />
                                    </svg>
                                </div>
                            </div>
                            <form:errors class="alert alert-danger" path="contrasenia"/>
                        </div>
                        <div class="mt-4">
                            <form:label class="form-label" path="confirmarContrasenia"><strong>Confirme Contraseña</strong></form:label>
                            <div class="password-wrapper">
                                <form:input class="form-control mb-4 text-center" id="password-field" placeholder="Confirmar Contraseña" path="confirmarContrasenia" type="password"/>
                                <div class="toggle-button rounded-circle">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="eye-icon">
                                        <path d="M12 15a3 3 0 100-6 3 3 0 000 6z" />
                                        <path fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z" clip-rule="evenodd" />
                                    </svg>
                                </div>
                            </div>
                            <form:errors class="alert alert-danger" path="confirmarContrasenia"/>
                        </div>
                        <button class="registerButton">Registrar</button>
                    </form:form>
                    <form action="/login">
                        <button class="backButton">Volver atrás</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="/particles/particles.js"></script>
    <script src="/particles/data/app.js"></script>
    <script src="/js/Test.js"></script>
    <script src="/js/bootstrap.bundle.js"></script>
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
        const rutInput = document.querySelector('[name="rut"]');
        if (rutInput) {
            rutInput.addEventListener('input', handleInput);
        }
    });
    </script>
</body>
</html>
