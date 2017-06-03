<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 60px;
		background-color: #f5f5f5;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<a href="/" class="navbar-brand">Brand</a>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/todo.do">Todos</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/logout.do">Logout</a></li>
		</ul>
	</nav>
	<div class="container">
		<h1>Welcome ${name}</h1>
		
		<p>Your Todo's are:</p>
		<ol>
			<c:forEach items="${todos}" var="todo">
				<li>${todo.name} <a href="/delete-todo.do?todo=${todo.name}">Delete</a></li>
			</c:forEach>
		</ol>
		<form action="/add-todo.do" method="post">
			<input type="text" name="todo"/><input type="submit" value="add">
		</form>
	</div>
	<footer class="footer">
		<p>footer content</p>
	</footer>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>