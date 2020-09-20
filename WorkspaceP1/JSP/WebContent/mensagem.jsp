<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exemplo de JSP</title>
</head>
<body>
 	<% out.println("Você está conectando da porta:"+ request.getRemotePort()); %>
	<% String mensagem = "uma mensagem sendo inserida no html";  %>
	<% out.println(mensagem); %>
	<br />
	<% String mensagem2 = "outra forma de inserir texto"; %>
	<%= mensagem2 %>
	<br />
	<% System.out.println("Esse texto só aparece no console do tomcat"); %>

</body>
</html>