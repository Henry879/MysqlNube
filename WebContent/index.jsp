<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.DriverManager, java.sql.SQLException, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Quiz</title>
</head>

<body>
    <div class="container">
        <div class="card shadow-lg border-0 my-4">
            <div class="card-body text-center bg-light rounded">
                <h1 class="display-5 text-primary">Formulario Agenda</h1>
            </div>
        </div>

        <form action="insertar.jsp" method="post" class="p-3 shadow-sm bg-white rounded">
            <div class="form-group">
                <label for="nombre"><strong>pea:</strong></label>
                <input type="text" class="form-control" id="nombre" name="nombre" />
            </div>
            <div class="form-group mt-3">
                <label for="telefono"><strong>Teléfono:</strong></label>
                <input type="text" class="form-control" id="telefono" name="telefono" />
            </div>

            <div class="mt-4">
                <input type="submit" class="btn btn-primary" value="Insertar" />
                <a href="contactos.jsp" class="btn btn-secondary">Ver Contactos</a>
                <a href="../manager" class="btn btn-success">
                    <i class="fas fa-arrow-left"></i> Volver
                </a>
            </div>
        </form>
    </div>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>

</html>
