<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>GARAGE MANAGMENT APP</title>
</head>
<body>
	<div align="center">
	<h1>APLICACIÓN DE MANTENIMIENTO DEL GARAJE</h1>
	<h3>Elige una opción de las siguientes:</h3>
	<br />
	<table border="2">
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=1"> Listar Plazas
					Garaje Libre</a></td>
		</tr>
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=2"> Listar Plazas
					Garaje Ocupadas</a></td>
		</tr>
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=3"> Reservar
					Plazas</a></td>
		</tr>
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=4"> Listar
					Clientes</a></td>
		</tr>
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=5"> Listar
					Reservas</a></td>
		</tr>
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=6"> Listar
					Vehiculos</a></td>
		</tr>
		<tr>
			<td><a href="/GarageJSP/dispatcher?option=7"> Listar por
					Fecha de Reserva </a></td>
		</tr>
	</table>
	</div>
</body>
</html>