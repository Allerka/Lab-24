<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet">
<style><%@ include file="/WEB-INF/css/style.css"%></style>
<meta charset="UTF-8">
<title>Registration Form</title>
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
	<h3>Enter Your Info!</h3>
	<br>
	<table style="margin-left: 10%; margin-right: 10%;">
			<tr>
			<form action="submission" method="POST">
				<td><label>Username</label> <input type="text"
					class="form-control" placeholder="Username" name="userName"></td>
				<td><label>Password</label> <input type="password"
					class="form-control" placeholder="Password" name="password"></td>
		</tr>
		<tr>
				<td><label>First Name</label> <input type="text"
					class="form-control" placeholder="First Name" name="firstName"></td>
				<td><label>Last Name</label> <input type="text"
					class="form-control" placeholder="Last Name" name="lastName"></td>
		</tr>
		<tr>
			<td><label>Age</label> <input type="number" class="form-control"
				placeholder="Enter your age" name="age"></td>
			<td><label>Email address</label> <input type="email"
				class="form-control" name="email" aria-describedby="emailHelp"
				placeholder="Enter email"> <small id="emailHelp"
				class="form-text text-muted">We'll never share your email
					with anyone else.</small></td>
		</tr>
		<tr>
			<td><h3>Choose One</h3>
				<div id="inputText">
					<input type="radio" name="triforce" value="Power">&nbsp; Power<br>
					<input type="radio" name="triforce" value="Wisdom">&nbsp; Wisdom<br>
					<input type="radio" name="triforce" value="Courage">&nbsp; Courage<br>
				</div></td>
			<td><h3>What do you drink?</h3>
				<div id="inputText">
					<input type="checkbox" name="drinks" value="tea">&nbsp; Tea <br>
					<input type="checkbox" name="drinks" value="coffee">&nbsp; Coffee <br>
					<input type="checkbox" name="drinks" value="energy drinks">&nbsp; Energy Drinks
				</div></td>
		</tr>
		<tr>
			<td><h3>Sign up for the newsletter?</h3> <select name="newsletter">
					<option value="true">Yes</option>
					<option value="false">No</option>
			</select></td>
			<td><input type="submit" value="Submit" class="btn btn-success" style="font-size: 125%;"></td>
		</tr>
		</form>
	</table>
	<br>
	<div class="botnav"><p align="center" style="color: gray;">©JavaBeans Coffee</p></div>
	</div>
</body>
</html>