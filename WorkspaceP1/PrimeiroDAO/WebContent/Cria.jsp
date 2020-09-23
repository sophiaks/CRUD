<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="java.util.*,br.edu.teste.*" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>
<%
	br.edu.teste.DAO dao = new br.edu.teste.DAO();
List<Pessoa> pessoas = dao.getLista();
%>
<table border='1'>
<%for (Pessoa pessoa : pessoas) { %>
<tr>
<td><%=pessoa.getNome() %></td>
<td><%=pessoa.getNascimento() %></td>
</tr>
<%} %>

</table>

</body>

</html>