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
		<h1>MODIFICACIÓN DE LOS DATOS DEL CLIENTE</h1>
		<table border="2" cellpadding="5">
			<tr>
				<td align="center" />
				<br />
				<form method="post" action="/GarageJSP/clientServlet">
					<input type="hidden" value="${cliente.idclient}" name="idClient" />
					Nombre del Cliente: <input type="text" name="name"
						value="${cliente.name}" /><br /> <br /> Apellidos del Cliente:
					<input type="text" name="surname" value="${cliente.surname}" /> <br />
					<br /> Número de identificación del cliente: <input type="text"
						name="nif" value="${cliente.nif}" /> <br /> <br />
					Teléfono/móvil de contacto del cliente: <input type="text"
						name="tlf" value="${cliente.telephone}" /> <br /> <br /> <input
						type="submit" value="Editar el cliente" name="editarCliente" /><br />
					<br />
				</form>
				</td>
			</tr>
		</table>
	</div>
	<div align="center">
		<br /> <a href="menu.jsp">Volver al menú principal</a>
	</div>
</body>
</html>