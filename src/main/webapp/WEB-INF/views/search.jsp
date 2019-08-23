<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<style><%@ include file ="/WEB-INF/css/style.css"%></style>
<title>Lab 24</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="z-index: 10; position: fixed; width: 100%; height: 7%;">
		<a class="navbar-brand" href="/">JavaBeans Coffee</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor03" aria-controls="navbarColor03"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarColor03">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
				<li class="nav-item"><a class="nav-link" href="registration"
					style="font-size: 125%">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0" action="search">
				<input class="form-control mr-sm-2" type="text"
					placeholder="Search for items" name="search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<br>
	<div style="margin-top: 50px; margin-bottom: 50px;">
	<h1>Search results!</h1>
	<br>
	<br>
		<c:forEach var="item" varStatus="status" items="${search }" step="1" begin="0">
			<div class="col${status.index % 4 + 1}">
				<div class="card border-success mb-3" style="max-width: 20rem;">
					<h3 class="card-header">${item.name }</h3>
					<img style="height: 200px; width: 100%; display: block;" src="/img/${item.image }" alt="Card image">
					<div class="card-body">
						<p class="card-text">${item.description }
						<p class="card-text">$ ${item.price }
					<a href="#" class="card-link">
					<button type="button" class="btn btn-success" style="position: absolute; left: 60%;">Add to Cart</button></a></p>
					</div>
				</div>
			</div>
		</c:forEach>
<div class="botnav"><p align="center" style="color: gray;">©JavaBeans Coffee</p></div>
		</div>
</body>
</html>
</body>
</html>