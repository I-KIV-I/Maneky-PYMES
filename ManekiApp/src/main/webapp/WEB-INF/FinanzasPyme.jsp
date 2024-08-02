<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <!-- navbar -->
            <nav class="navbar navbar-expand-lg navbbarback" data-bs-theme="dark">
              <div class="container">
                <a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
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
            <h5>${nombreUsuario}, Aqui tienes tus informes de finanzas.</h5>
            </div>
          </header>
          <article>
            <ul>
              <c:forEach var="informes" items="${finanzaDiaria}">
                <li>
                  <a href="informe/${informe.id}">${informe.fechaInformeDiario}</a>
                  </a>
                </li>
              </c:forEach>
            </ul>
          </article>
          <article>
            <ul>
              <c:forEach var="informes" items="${finanzaMensual}">
                <li>
                  <a href="informe/${informe.id}">${informe.fechaInformeDiario}</a>
                </li>
              </c:forEach>
            </ul>
          </article>
        </body>

        </html>