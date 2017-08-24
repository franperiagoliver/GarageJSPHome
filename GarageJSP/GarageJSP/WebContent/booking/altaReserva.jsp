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
		<h1>FORMULARIO DE ALTA DEL CLIENTE EN EL GARAJE</h1>
		<table border="2" cellpadding="5">
			<tr>
				<td align="center">
				<br/>
					<form method="post" action="/GarageJSP/booking">
						Nombre del cliente: <input type="text" name="name" /><br /> <br />
						Apellidos del cliente: <input type="text" name="surname" /> <br />
						<br /> Número de identificación del cliente: <input type="text"
							name="nif" /> <br /> <br /> Teléfono/móvil de contacto del
						cliente: <input type="text" name="tlf" /> <br /> <br />
						Matrícula de vehículo del cliente: <input type="text" name="plate" />
						<br /> <br /> Modelo del vehículo del cliente: <select
							name="vehicleModel">
							<c:forEach items="${coches}" var="coche">
								<option value="${coche}">${coche}</option>
							</c:forEach>
						</select><br /> <br /> Plaza que se desea reservar: <select
							name="plazaSeleccionada">
							<c:forEach items="${plazas}" var="plaza">
								<option value="${plaza}">${plaza.parkingnumber} - ${plaza.parkingprize} EUR - ${plaza.parkingsize} m2</option>
							</c:forEach>
						</select> <br /> <br /> <input type="submit" value="Reservar" /><br />
						<br />
					</form>
				</td>
			</tr>
		</table>
	</div>
	<div align="center">
		<br /> <a href="menu.jsp"> Volver al menú principal</a>
	</div>
</body>
</html>