<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Todo
					App</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>
		</nav>
	</header>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Lista de Tarefas</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/Cria"
					class="btn btn-success">Adicionar Tarefa</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Tarefa</th>
						<th>Data de Entrega</th>
						<th>Descrição</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="tarefa" items="${tarefas}">

						<tr>
							<td><c:out value="${tarefa.tarefa}" /></td>
							<td><c:out value="${tarefa.data}" /></td>
							<td><c:out value="${tarefa.descricao}" /></td>

							<td><a href="edit?id=<c:out value='${tarefa.id}' />">Editar</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${tarefa.id}' />">Deletar</a></td>

							<!--  <td><button (click)="updateTodo(todo.id)" class="btn btn-success">Update</button>
          							<button (click)="deleteTodo(todo.id)" class="btn btn-warning">Delete</button></td> -->
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>