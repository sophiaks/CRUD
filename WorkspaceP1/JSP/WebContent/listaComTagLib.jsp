<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp"/>
	<jsp:useBean id="dao" class="br.insper.edu.DAO"/>
	
	<table border="1">
	<tr>
	<td><b>#</b></td>
	<td><b>nome</b></td>
	<td><b>data nascimento</b></td>
	<td><b>altura</b></td>
	</tr>
	<c:forEach var="pessoa" items="${dao.lista}" varStatus="id">
	<tr bgcolor="#${id.count%2 == 0 ? 'bbffcc' : 'ffffbb' }" >
	<td>${id.count}</td>
	<td>${pessoa.nome}</td>
	<td>
	<fmt:formatDate     
	value="${pessoa.nascimento.time}"                
	pattern="dd/MM/yyyy"/>
	</td>
	<td>${pessoa.altura}</td>
	</tr>
	
	</c:forEach>
	</table>
</body>
</html>