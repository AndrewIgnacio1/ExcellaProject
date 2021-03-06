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
        

        <title>Excella | User Dashboard</title>
    </head>

    <body>
        <div class="nav_bar">

            <ul>
                <li><a href="/dashboard">Home</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>

        </div>
        <div class="form_header"><img class="logosmall" src="img/excellalogo.png" alt="logo"></div>

        <div class="jumbotron">
            <h1 class="display-2">Welcome User!</h1>
            <hr class="my-4">
            <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
        </div>


        <div class="userdashcol" style="vertical-align: top">
            <h1>Incomplete</h1>
            <ul>
            <c:if test="${form_a == null}">
                <li><a href="/new_a">Form A</a></li> 
            </c:if>
            <c:if test="${form_b == null}">
                <li><a href="/new_b">Form B</a></li> 
            </c:if>
            <c:if test="${form_c == null}">
                <li><a href="/new_c">Form C</a></li> 
            </c:if>
            <c:if test="${form_d == null}">
                <li><a href="/new_d">Form D</a></li> 
            </c:if>
            </ul>                      
        </div>

        <div class="userdashcol" style="vertical-align: top">
            <h1>Pending</h1>
            <ul>
            <c:if test="${form_a.form_level == 1}">
                <li>Form A</li> 
            </c:if>
            <c:if test="${form_b.form_level == 1}">
                <li>Form B</li> 
            </c:if>
            <c:if test="${form_c.form_level == 1}">
                <li>Form C</li> 
            </c:if>
            <c:if test="${form_d.form_level == 1}">
                <li>Form D</li> 
            </c:if>
            </ul>                         
        </div>

        <div class="userdashcol">
            <h1>Approved</h1>
            <ul>
                <li><a href="#">Form I</a></li> 
                <li><a href="#">Form J</a></li>
                <li><a href="#">Form K</a></li>
                <li><a href="#">Form L</a></li>
            </ul>                        
        </div>


</body>

</html>