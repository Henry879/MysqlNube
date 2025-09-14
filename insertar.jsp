<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>

<%
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");

    Connection conexion = null;
    Statement sentencia = null;
    int filas = 0;

    try {
        Class.forName("com.mysql.jdbc.Driver"); 
        conexion = DriverManager.getConnection("jdbc:mysql://b0bkzkljsrd0t9o7nquw-mysql.services.clever-cloud.com:3306/b0bkzkljsrd0t9o7nquw","uahq5qbytgqisfoi","x8DWml1Y3lIpEusSqcdX");

        sentencia = conexion.createStatement();
        String consultaSQL = "INSERT INTO usuarios (nombre, telefono) VALUES "
                           + "('" + nombre + "','" + telefono + "')";

        filas = sentencia.executeUpdate(consultaSQL);
        response.sendRedirect("contactos.jsp");

    } catch (ClassNotFoundException e) {
        out.println("Error en la carga del driver: " + e.getMessage());
    } catch (SQLException e) {
        out.println("Error accediendo a la base de datos: " + e.getMessage());
    } finally {
        if (sentencia != null) {
            try { sentencia.close(); }
            catch (SQLException e) {
                out.println("Error cerrando la sentencia: " + e.getMessage());
            }
        }
        if (conexion != null) {
            try { conexion.close(); }
            catch (SQLException e) {
                out.println("Error cerrando la conexión: " + e.getMessage());
            }
        }
    }
%>
