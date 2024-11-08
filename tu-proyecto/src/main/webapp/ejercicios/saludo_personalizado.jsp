<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 1: Saludo</title>
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		
		String saludo = "";
		if (nombre != null && apellido != null) saludo = "Hola " + nombre + " " + apellido;
	%>

	<form action="">
		<label for="nombre">Nombre:</label>
		<input name="nombre" id="nombre" type='text' required> <br>
		
		<label for='apellido'>Apellido</label>
		<input name="apellido" id="apellido" type='text' required> <br>
		
		<input type="submit" value="Mandar saludo">
	</form>
	
	<h2><%= saludo %></h2>
</body>
</html>