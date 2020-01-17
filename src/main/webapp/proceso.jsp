<%-- 
    Document   : proceso
    Created on : 17 ene. 2020, 14:27:21
    Author     : devas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="daw.devasweb.Cliente" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Datos del cliente</title>
</head>
<body>
<!-- Se recogen los valores que envía el formulario mediante el objeto request y su método getParameter() -->
    <%
Cliente cli;
        String edad = request.getParameter("edad");
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("mail");
        
        if (email.equals("")||edad.equals("")||nombre.equals("")){
    %>

<!-- Si no se ha introducido algún parámetro se muestra el error -->

<center> <h2>Faltan parámetros</h2> </center>
<!-- Se han introducido correctamente, creamos el objeto con los datos -->
    <% } else {
        cli = new Cliente(nombre, Integer.parseInt(edad),email);
    %>
    <p>
        Información recogida por el servidor:<br>
        
        Edad: <%= cli.getEdad() %> <br>
        Nombre: <%= cli.getNombre() %> <br>
        Correo: <%= cli.getMail() %> <br>
        <a href="index.html">Volver</a>
        
    <% } %> <!-- LLave del else -->
    
</body>
</html>

