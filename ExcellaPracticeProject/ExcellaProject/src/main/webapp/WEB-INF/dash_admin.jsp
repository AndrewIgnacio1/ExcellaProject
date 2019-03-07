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
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">

    <link href="https://fonts.googleapis.com/css?family=Montserrat|Quicksand|Roboto+Condensed|Slabo+27px|Source+Sans+Pro" rel="stylesheet">
        

    <title>Excella | Admin Dashboard</title>
</head>

<body>
    <div class="nav_bar">
		<ul>
			<li><a href="/dashboard_admin">Home</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>
    <div class="form_header"><img class="logosmall" src="img/excellalogo.png" alt="logo"></div>

    <div class="jumbotron">
        <h1 class="display-2">Welcome Admin!</h1>
        <hr class="my-4">
        <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
    </div>

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Pending Forms</th>
                    <th>Completed Forms</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <c:forEach items="${ users }" var="user">
                <tr>
                    <td>${ user.username }</td>
                    <c:if test="${user.user_level != 1}">
                        <td>
                            <a href="forms/${user.id}/pending" class="btn-forms">View Forms</a>
                        </td>
                        <td>
                            <a href="forms/${user.id}/completed" class="btn-forms">View Forms</a>
                        </td>
                        <td>
                            <form:form action="/${user.id}/promote" method="put" style="display:inline-block">
                                <input type="hidden" id="user_level" name="user_level" value="1">
                                <input type="submit" class="btn-promote" value="Promote"/>
                            </form:form>
                            <button type="button" class="btn-delete">Delete</button>
                        </td>
                    </c:if>

                    <c:if test="${user.user_level == 1}">
                        <td></td>
                        <td></td>
                        <td>
                            <form:form action="/${user.id}/promote" method="put" style="display:inline-block">
                                <input type="hidden" id="user_level" name="user_level" value="0">
                                <input type="submit" class="btn-promote" value="Demote"/>
                                <button type="button" class="btn-delete">Delete</button>
                            </form:form>
                        </td>
                    </c:if>
                </tr>
                    
			</c:forEach>
        </table>
    </div>
</body>

</html>