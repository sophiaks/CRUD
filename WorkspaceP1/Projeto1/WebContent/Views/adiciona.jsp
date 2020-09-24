<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*,br.edu.insper.*" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tarefa</title>
<link href="<c:url value="/bootstrap/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

</head>

<body>
<section class="bg-custom">
	<jsp:useBean id="dao" class="br.edu.insper.model.DAO"/>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: indigo">
		<br>
		<a href="<%=request.getContextPath()%>/Lista" class="btn btn-secondary">Lista de Tarefas</a>
		
		
		
		</nav>
	</header>
	<form action="adiciona" method="post">
		<div class="form-group">
			<label for="nome">Tarefa</label>
			<input type="text" name="nome" class="form-control" placeholder="Tarefa">
		</div>
			
		<div class="form-group">
			<label for="nome">Data de Entrega</label>
			<input type="date" name="entrega" class="form-control" placeholder="Data de Entrega">
		</div>
		
		<div class="form-group">
			<label for="descricao">Descri��o</label>
			<input type="text" name="descricao" class="form-control" placeholder="Descri��o">
		</div>
			
		<div>
			<input type="submit" value="OK" class="btn btn-success" >
		</div>
			
			
	
	</form>
	<br />
	

	</section>
</body>
</html>