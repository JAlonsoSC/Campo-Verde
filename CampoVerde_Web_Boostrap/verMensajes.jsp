
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h2>Mensajes Recibidos</h2>
    <table border="1">
        <tr>
            <th>Emisor</th>
            <th>Contenido</th>
            <th>Fecha</th>
        </tr>
        <c:forEach var="mensaje" items="${mensajes}">
            <tr>
                <td>${mensaje.emisorNombre}</td>
                <td>${mensaje.contenido}</td>
                <td>${mensaje.fecha}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
