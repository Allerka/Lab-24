<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Confirmation Page</title>
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
				<a class="nav-link" href="registration" style="font-size: 125%">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text"
					placeholder="Search for items">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<br>
	<div style="margin-top: 50px; margin-bottom: 50px;">
<h1>Thanks, ${user.firstName}!</h1>
<br><br>
<h3>Info you Entered:</h3>
<br><h4>
Full Name: ${user.firstName } ${user.lastName }
<br>
Age: ${user.age }
<br>
Email: ${user.email }
<br>
Triforce: ${user.triforce }
<br>
Drink choices:<c:forEach items="${user.drinks }" var="drink" varStatus="i">
   [${drink}] 
</c:forEach>
<br>
Newsletter: ${user.newsletter }
<br></h4>
<div class="botnav"><p align="center" style="color: gray;">©JavaBeans Coffee</p></div>
</div>
</body>
</html>