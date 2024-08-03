<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Noticias</title>
</head>
<body>
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
    <h1>Noticias</h1>
    <p>en esta seccion encontraras noticias de todo tipo</p>
    <div>
        <c:forEach var="noticia" items="${noticias}">
            <h2><a href="/noticias/${noticia.id}">${noticia.titulo}</a></h2>
            <p>${noticia.resumen}</p>
        </c:forEach>
    </div>
</body>
</html>
