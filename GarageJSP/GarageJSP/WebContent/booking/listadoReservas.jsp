<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.*"%>
<%@page import="com.everis.alicante.becajava.domain.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>GARAGE MANAGMENT APP</title>
</head>
<body>
	<div align="center">
		<h1>LISTA DE RESERVAS DEL GARAJE</h1>

		<form method="get" action="/GarageJSP/dispatcher?option=8">
			<table border="1">
				<tr>
					<th>ID DE RESERVA</th>
					<th>FECHA DE RESERVA</th>
					<th>NIF DEL CLIENTE</th>
					<th>PLAZA RESERVADA</th>
					<th>VEHICULO</th>
					<th>EDITAR LA RESERVA</th>
				</tr>
				<c:forEach items="${reservas}" var="reserva">
					<tr>
						<td align="center"><c:out value="${reserva.idbooking}"></c:out></td>
						<td align="center"><c:out value="${reserva.bookingdate}"></c:out></td>
						<td align="center"><c:out value="${reserva.client.nif}"></c:out></td>
						<td align="center"><c:out value="${reserva.parkingplace.parkingnumber}"></c:out></td>
						<td align="center"><c:out value="${reserva.vehicle.idvehicle}"></c:out></td>
						<td align="center"><a href="/GarageJSP/dispatcher?option=8&id=${reserva.idbooking}">Editar</a></td>
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