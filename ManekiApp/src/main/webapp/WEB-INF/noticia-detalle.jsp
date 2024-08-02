<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle de Noticia</title>
</head>
<body>
    <h1>${noticia.titulo}</h1>
    <p>${noticia.contenido}</p>
    <h2>Comentarios</h2>
    <div>
        <c:forEach var="comentario" items="${noticia.comentarios}">
            <p>${comentario.texto} - <i>${comentario.usuario.nombre}</i></p>
        </c:forEach>
    </div>
    <h3>Agregar Comentario</h3>
    <form action="/comentarios" method="post">
        <input type="hidden" name="noticiaId" value="${noticia.id}">
        <textarea name="texto"></textarea>
        <button type="submit">Enviar</button>
    </form>
</body>
</html>
