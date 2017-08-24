<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GARAGE MANAGEMENT APP</title>
</head>
<body>
	<div align="center">
		<h1>FILTRAR RESERVAS POR FECHA</h1>
		<table border="1">
			<tr>
				<td align="center"><br />
					<form method="post" action="/GarageJSP/bookingDate">
						Fecha inicio: <input type="date" name="fechaInicio" step="1" /><br />
						<br /> Fecha fin: <input type="date" name="fechaFin" step="1" /><br />
						<br /> <input type="hidden" name="filtroFecha" value="filtroFecha" />
						<input type="submit" value="Listar reservas" name="ListarFec" /><br />
						<br />
					</form></td>
			</tr>
		</table>
	</div>
	<div align="center">
		<br /> <a href="../menu.jsp">Volver al menú principal</a>
	</div>
</body>
</html>