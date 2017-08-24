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
		<h1>LISTADO DE CLIENTES DEL GARAJE</h1>
		<form method="get" action="/GarageJSP/dispatcher?option=9">
			<table border="1" align="center">
				<tr>
					<th>ID</th>
					<th>NOMBRE</th>
					<th>APELLIDOS</th>
					<th>NIF</th>
					<th>TELÉFONO</th>
					<th>RESERVAS</th>
					<th>VEHÍCULOS</th>
					<th>EDITAR DATOS DE CONTACTO</th>
				</tr>
				<c:forEach items="${clientes}" var="cliente">
					<tr>
						<td><c:out value="${cliente.idclient}"></c:out></td>
						<td><c:out value="${cliente.name}"></c:out></td>
						<td><c:out value="${cliente.surname}"></c:out></td>
						<td><c:out value="${cliente.nif}"></c:out></td>
						<td><c:out value="${cliente.telephone}"></c:out></td>
						<td><select><c:forEach items="${cliente.bookings}"
									var="reserva">
									<option value="${reserva}">${reserva}</option>
								</c:forEach></select></td>
						<td><select><c:forEach items="${cliente.vehicles}"
									var="vehiculo">
									<option value="${vehiculo}">${vehiculo}</option>
								</c:forEach></select></td>
						<td><a
							href="/GarageJSP/dispatcher?option=9&id=${cliente.idclient}">Editar</a></td>
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