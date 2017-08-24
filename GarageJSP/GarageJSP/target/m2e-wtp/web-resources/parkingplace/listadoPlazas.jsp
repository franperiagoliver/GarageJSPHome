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
		<h1>LISTADO DE PLAZAS LIBRES DEL GARAJE</h1>
		<table border="1">
			<tr>
				<th>NÚMERO DE PLAZA</th>
				<th>PRECIO</th>
				<th>TAMAÑO</th>
			</tr>
			<c:forEach items="${plazas}" var="plaza">
				<tr>
					<td><c:out value="${plaza.parkingnumber} "></c:out></td>
					<td><c:out value="${plaza.parkingprize} EUR"></c:out></td>
					<td><c:out value="${plaza.parkingsize} m2"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br />
	<div align="center">
		<a href="menu.jsp">Volver al menú principal</a>
	</div>
</body>
</html>