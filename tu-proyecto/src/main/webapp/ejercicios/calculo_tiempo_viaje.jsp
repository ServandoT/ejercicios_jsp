<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 2: Cálculo tiempo</title>
</head>
<body>
	<%
		String distanciaStr = request.getParameter("distancia");
		String velocidadStr = request.getParameter("velocidad");
		
		Double tiempo = null;
		
		if (distanciaStr != null && velocidadStr != null) {
			double distancia = Double.parseDouble(distanciaStr);
			double velocidad = Double.parseDouble(velocidadStr);
			
			tiempo = distancia / velocidad;
		}
		
		String respuesta = tiempo != null ? "Tardarás " + tiempo + " horas" : "";
	%>
	
	<form action="">
		<label for="distancia">Distancia en km</label>
		<input name="distancia" type="number" step="0.01"><br>
		
		<label for="velocidad">Velocidad en km/h</label>
		<input name="velocidad" type="number" step="0.01"><br>
		
		<input type="submit" value="Calcular">
	</form>
	
	<h2><%= respuesta %></h2>
</body>
</html>