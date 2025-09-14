<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String nombre = request.getParameter("nombre");
String telefono = request.getParameter("telefono");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Contacto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Editar Contacto</h2>

        <form action="actualizar.jsp" method="post" class="card p-4 shadow">
            <!-- Datos viejos, ocultos -->
            <input type="hidden" name="nombreViejo" value="<%= nombre %>">
            <input type="hidden" name="telefonoViejo" value="<%= telefono %>">

            <!-- Nuevos datos -->
            <div class="mb-3">
                <label for="nombreNuevo" class="form-label">Nuevo nombre</label>
                <input type="text" class="form-control" name="nombreNuevo" value="<%= nombre %>" required>
            </div>
            <div class="mb-3">
                <label for="telefonoNuevo" class="form-label">Nuevo teléfono</label>
                <input type="text" class="form-control" name="telefonoNuevo" value="<%= telefono %>" required>
            </div>
            <button type="submit" class="btn btn-primary">Actualizar</button>
            <br>
            <a href="contactos.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
