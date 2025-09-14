<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.DriverManager, java.sql.SQLException" %>
<%
String nombreViejo = request.getParameter("nombreViejo");
String telefonoViejo = request.getParameter("telefonoViejo");
String nombreNuevo = request.getParameter("nombreNuevo");
String telefonoNuevo = request.getParameter("telefonoNuevo");

Connection conexion = null;
Statement sentencia = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conexion = DriverManager.getConnection("jdbc:mysql://b0bkzkljsrd0t9o7nquw-mysql.services.clever-cloud.com:3306/b0bkzkljsrd0t9o7nquw","uahq5qbytgqisfoi","x8DWml1Y3lIpEusSqcdX");
    sentencia = conexion.createStatement();

    String consultaSQL = "UPDATE usuarios SET nombre='" + nombreNuevo + "', telefono='" + telefonoNuevo + "' " +
                        "WHERE nombre='" + nombreViejo + "' AND telefono='" + telefonoViejo + "'";
    int filas = sentencia.executeUpdate(consultaSQL);

    response.sendRedirect("contactos.jsp");

} catch (ClassNotFoundException e) {
    out.println("Error en la carga del driver: " + e.getMessage());
} catch (SQLException e) {
    out.println("Error accediendo a la base de datos: " + e.getMessage());
} finally {
    try { if (sentencia != null) sentencia.close(); } catch (SQLException ignored) {}
    try { if (conexion != null) conexion.close(); } catch (SQLException ignored) {}
}
%>
