<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html>

<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link rel="stylesheet" type="text/css" media="screen" href="style.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

		<title>Excella | Login</title>
	</head>

	<body>
		
		<img class="bgimg" src="img/login.png" alt="background pic">
		<div class="nav_bar">

			<!-- login/registration -->
			<div class="login_register">
				<ul>
					<li><a routerLink="/" routerLinkActive="active">Home</a></li>
					<li class="about"><a href="">About</a></li>
				</ul>
			</div>

		</div>

		<div class="page_head phright">
			<i class="fas fa-scroll scroll_main"></i><img class="logo" src="img/excellalogo.png" alt="logo">
			<div class="head_text">
				<form (submit)="login()">
					<input class="login_input" type="text" name="user.email" placeholder="email">
					<input class="login_input" type="password" name="user.password" placeholder="password">
					<input class="submit" type="submit" value="login">
					<p class="to_register">not yet a member? <a href="register.html">click here</a></p>
				</form>
			</div>
		</div>

	</body>

</html>