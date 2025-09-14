<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.DriverManager, java.sql.SQLException" %>
<%
String nombre = request.getParameter("nombre");
String telefono = request.getParameter("telefono");

Connection conexion = null;
Statement sentencia = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conexion = DriverManager.getConnection("jdbc:mysql://b0bkzkljsrd0t9o7nquw-mysql.services.clever-cloud.com:3306/b0bkzkljsrd0t9o7nquw","uahq5qbytgqisfoi","x8DWml1Y3lIpEusSqcdX");
    sentencia = conexion.createStatement();

    String consultaSQL = "DELETE FROM usuarios WHERE nombre='" + nombre + "' AND telefono='" + telefono + "'";
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
