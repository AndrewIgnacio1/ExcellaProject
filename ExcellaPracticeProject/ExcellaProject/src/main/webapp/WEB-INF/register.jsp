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

		<title>Excella | Register</title>
	</head>

	<body>
		
		<img class="bgimg" src="img/register.png" alt="background pic">
		<div class="nav_bar">

			<!-- login/registration -->
			<div class="login_register">
				<ul>
					<li><a routerLink="/" routerLinkActive="active">Home</a></li>
					<li class="about"><a href="">About</a></li>
				</ul>
			</div>

		</div>

		<div class="page_head phleft">
			<i class="fas fa-scroll scroll_main"></i><img class="logo" src="img/excellalogo.png" alt="logo">
			<div class="head_text">
				<form (submit)="create()">
					<p>Select your icon...</p>
					<label>
						<input type="radio" name="user.icon" value="img/1.png" checked>
						<img class="post_profile_photo" src="img/1.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/2.png">
						<img class="post_profile_photo" src="img/2.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/3.png">
						<img class="post_profile_photo" src="img/3.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/4.png">
						<img class="post_profile_photo" src="img/4.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/5.png">
						<img class="post_profile_photo" src="img/5.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/6.png">
						<img class="post_profile_photo" src="img/6.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/7.png">
						<img class="post_profile_photo" src="img/7.png" alt="">
					</label>
					<label>
						<input type="radio" name="user.icon" value="img/8.png">
						<img class="post_profile_photo" src="img/8.png" alt="">
					</label>

					<input class="login_input" type="text" name="user.username" placeholder="username">
					<input class="login_input" type="text" name="user.email" placeholder="email">
					<input class="login_input" type="password" name="user.password" placeholder="password">

					<input class="submit" type="submit" value="be an Excellant!">
					<p class="to_register">already an Excellant? <a href="login.html">click here</a></p>
				</form>
			</div>
		</div>

	</body>

</html>