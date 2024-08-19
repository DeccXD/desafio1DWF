<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Cargos</title>
    <link rel="stylesheet" href="./Styles.css">
</head>
<body>
<div class="contenedor">
    <div class="image-container">
        <img src="./image/udb.png" alt="Logo">
    </div>
</div>
<h1>Recursos Humanos</h1>


<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Número de DUI</th>
        <th>Nombre Persona</th>
        <th>Usuario</th>
        <th>Numero de Telefono</th>
        <th>Correo Institucional</th>
        <th>Fecha de nacimiento</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cargo" items="${cargos}">
        <tr>
            <td><c:out value="${cargo.idCargo}" /></td>
            <td><c:out value="${cargo.cargo}" /></td>
            <td><c:out value="${cargo.descripcionCargo}" /></td>
            <td><c:out value="${cargo.jefatura}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>