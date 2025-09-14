<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.DriverManager, java.sql.SQLException, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agenda</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4 text-primary">Lista de Contactos</h2>

        <div class="card shadow-lg border-0">
            <div class="card-body">
                <table class="table table-striped table-hover align-middle text-center">
                    <thead class="table-dark">
                        <tr>
                            <th>Nombre</th>
                            <th>Teléfono</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        Connection conexion = null;
                        Statement sentencia = null;
                        ResultSet rs = null;
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conexion = DriverManager.getConnection("jdbc:mysql://b0bkzkljsrd0t9o7nquw-mysql.services.clever-cloud.com:3306/b0bkzkljsrd0t9o7nquw","uahq5qbytgqisfoi","x8DWml1Y3lIpEusSqcdX");
                            sentencia = conexion.createStatement();
                            String consultaSQL = "SELECT nombre, telefono FROM usuarios";
                            rs = sentencia.executeQuery(consultaSQL);

                            if (!rs.isBeforeFirst()) {
                        %>
                                <tr>
                                    <td colspan="3" class="text-center text-muted">No hay contactos registrados.</td>
                                </tr>
                        <%
                            } else {
                                while (rs.next()) {
                                    String nombre = rs.getString("nombre");
                                    String telefono = rs.getString("telefono");
                        %>
                                <tr>
                                    <td><%= nombre %></td>
                                    <td><%= telefono %></td>
                                    <td>
                                        <!-- Botón Editar -->
                                        <a href="editar.jsp?nombre=<%= nombre %>&telefono=<%= telefono %>" 
                                           class="btn btn-info btn-sm">
                                           <i class="fas fa-edit"></i> Editar
                                        </a>

                                        <!-- Botón Eliminar -->
                                        <a href="eliminar.jsp?nombre=<%= nombre %>&telefono=<%= telefono %>" 
                                           class="btn btn-danger btn-sm">
                                           <i class="fas fa-trash-alt"></i> Eliminar
                                        </a>
                                    </td>
                                </tr>
                        <%
                                }
                            }
                        } catch (ClassNotFoundException | SQLException e) {
                        %>
                            <tr>
                                <td colspan="3" class="text-danger text-center">Error: <%= e.getMessage() %></td>
                            </tr>
                        <%
                        } finally {
                            try { if (rs != null) rs.close(); } catch (SQLException ignored) {}
                            try { if (sentencia != null) sentencia.close(); } catch (SQLException ignored) {}
                            try { if (conexion != null) conexion.close(); } catch (SQLException ignored) {}
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-success btn-lg">
                <i class="fas fa-arrow-left"></i> Volver
            </a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


