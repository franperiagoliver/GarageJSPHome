<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="com.everis.alicante.becajava.domain.*" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>GARAGE MANAGMENT APP</title>
</head>
<body>

	<form method="post" action="/GarageJSP/clientServlet"> 
	<input type="hidden" value="${cliente.idclient}" name="idClient" />
	<h4>Nombre del Cliente:</h1>
		
	<input type="text" name="name" value="${cliente.name}" />
	
	
	<h4>Apellidos del Cliente</h1>
		
	<input type="text" name="surname" value="${cliente.surname}" />

	<br/>
	
	<h4>Nif del Cliente</h1>
		
	<input type="text" name="nif" value="${cliente.nif}" />

	<br/>
	<h4>Telefono del cliente</h1>
		
	<input type="text" name="tlf" value="${cliente.telephone}" />

	<br/>
	<br/>
	<br/>
	<input type="submit" value="Editar el cliente" name="editarCliente"/>
	</form>

</body>
</html>