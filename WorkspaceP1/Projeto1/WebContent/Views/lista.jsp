<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lista de Tarefas</title>
<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/bootstrap/css/bootstrap.css"/>" rel="stylesheet">
</head>

<body>
	<div class="bg-custom">
	<jsp:useBean id="dao" class="br.edu.insper.model.DAO"/>
    
 
   	 <div class="form-inline">
	    <form action="procura" method="post">
	    	<div>
				<input type="text" name="pesquisa" class="form-control" placeholder="Pesquisar">
				<input type="submit" value="OK" class="btn btn-success" >
				
			</div>
	    </form>
	   	</div>
	<table border='1' class="table table-dark">
	
				<thead>
					<tr>
						<th>Tarefa</th>
						<th>Data de Entrega</th>
						<th>Descri��o</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tarefa" items="${dao.lista}">
						<tr>
							<td>${tarefa.nome}</td>
							<td>${tarefa.entrega}</td>
							<td>${tarefa.descricao}</td>
							
							<td><form action="remove" method="post">
							<input type="hidden" name='id' value='${tarefa.id}'>
							<input type="submit" value="Remover" class="btn btn-primary">
							</form>
							</td>
							
							<td><form action="atualiza" method="get">
							<input type="hidden" name='id' value='${tarefa.id}'>
							<input type="hidden" name='nome' value='${tarefa.nome}'>
							<input type="hidden" name='entrega' value='${tarefa.entrega}'>
							<input type="hidden" name='descricao' value='${tarefa.descricao}'>
							<input type="submit" value="Editar" class="btn btn-secondary">
							</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
</table>
<br />
<a href="<%=request.getContextPath()%>/adiciona"
					class="btn btn-success">Adicionar Tarefa</a>
</div>
</body>

</html>