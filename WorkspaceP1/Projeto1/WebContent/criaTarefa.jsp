<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tarefa</title>
</head>

<body>
	<form action="Cria" method="post">
		<table>
			<tr>
				<td>Tarefa</td>
				<td><input type="text" name="tarefa"></td>
			</tr>
			<tr>
				<td>Data</td>
				<td><input type="date" name="entrega"></td>
			</tr>
			<tr>
				<td>Descri��o</td>
				<td><input type="text" name="descricao"></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" name="ok"></td>
			</tr>
		</table>
	</form>
	<br />
	<table border="1">
	
	<c:forEach var="tarefa" items="${tarefas}">
		<tr>
			<td>${tarefa.tarefa}</td>
			<td>${tarefa.data}</td>
			<td>${tarefa.descricao}</td>
		</tr>
	</c:forEach>
</table>
	
</body>
</html>