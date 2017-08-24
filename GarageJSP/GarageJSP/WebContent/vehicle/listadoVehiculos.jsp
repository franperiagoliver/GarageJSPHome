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
		<h1>LISTADO DE VEHICULOS DEL GARAJE</h1>
		<form method="get" action="/GarageJSP/dispatcher?option=10">
			<table border="1" align="center">
				<tr>
					<th>ID DEL VEHÍCULO</th>
					<th>MATRÍCULA</th>
					<th>MODELO</th>
					<th>NIF DEL PROPIETARIO</th>
					<th>EDITAR DATOS DEL VEHÍCULO</th>
				</tr>
				<c:forEach items="${vehiculos}" var="vehiculo">
					<tr>
						<td align="center"><c:out value="${vehiculo.idvehicle}"></c:out></td>
						<td align="center"><c:out value="${vehiculo.vehicleplate}"></c:out></td>
						<td  align="center"><c:out value="${vehiculo.vehiclemodel}"></c:out></td>
						<td align="center"><c:out value="${vehiculo.client.nif}"></c:out></td>
						<td align="center"><a
							href="/GarageJSP/dispatcher?option=10&id=${vehiculo.idvehicle}">Editar</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
	<div align="center">
		<br /> <a href="menu.jsp">Volver al menú principal</a>
	</div>
</body>
</html>