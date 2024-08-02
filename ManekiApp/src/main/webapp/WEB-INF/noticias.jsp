<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Noticias</title>
</head>
<body>
    <h1>Noticias</h1>
    <div>
        <c:forEach var="noticia" items="${noticias}">
            <h2><a href="/noticias/${noticia.id}">${noticia.titulo}</a></h2>
            <p>${noticia.resumen}</p>
        </c:forEach>
    </div>
</body>
</html>
