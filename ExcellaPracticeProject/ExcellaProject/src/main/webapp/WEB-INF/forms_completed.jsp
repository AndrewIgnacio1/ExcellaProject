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
    <link rel="stylesheet" type="text/css" media="screen" href="../../css/style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">

    <link href="https://fonts.googleapis.com/css?family=Montserrat|Quicksand|Roboto+Condensed|Slabo+27px|Source+Sans+Pro" rel="stylesheet">
        

    <title>Excella | Completed Forms</title>
</head>

<body>
    <div class="nav_bar">
        <ul>
            <li><a href="/dashboard_admin">Home</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>
    <div class="form_header"><img class="logosmall" src="../../img/excellalogo.png" alt="logo"></div>
    <div class="container">
        <h2>${user.username}'s completed reports</h2>
        <ul class="list-group">
            <c:if test="${form_a.form_level == 2}">
                <li class="list-group-item">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#form1">Form A</button>

                    <div class="modal fade" id="form1" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Form A</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <h3>First Name</h3>
                                    <p><c:out value="${form_a.first_name}"/></p>
                                    <h3>Last Name</h3>
                                    <p><c:out value="${form_a.last_name}"/></p>
                                    <h3>Middle Initial</h3>
                                    <p><c:out value="${form_a.middle_initial}"/></p>
                                    <h3>Email</h3>
                                    <p><c:out value="${form_a.email}"/></p>
                                    <h3>Address</h3>
                                    <p><c:out value="${form_a.address}"/></p>
                                    <h3>Address 2</h3>
                                    <p><c:out value="${form_a.address2}"/></p>
                                    <h3>City</h3>
                                    <p><c:out value="${form_a.city}"/></p>
                                    <h3>State</h3>
                                    <p><c:out value="${form_a.state}"/></p>
                                    <h3>zip</h3>
                                    <p><c:out value="${form_a.zip}"/></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </c:if>
            <c:if test="${form_b.form_level == 2}">
                <li class="list-group-item">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#form2">Form B</button>

                    <div class="modal fade" id="form2" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Form B</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                        <h3>One</h3>
                                        <p><c:out value="${form_b.one}"/></p>
                                        <h3>Two</h3>
                                        <p><c:out value="${form_b.two}"/></p>
                                        <h3>Three</h3>
                                        <p><c:out value="${form_b.three}"/></p>
                                        <h3>Four</h3>
                                        <p><c:out value="${form_b.four}"/></p>
                                        <h3>Five</h3>
                                        <p><c:out value="${form_b.five}"/></p>
                                        <h3>Six</h3>
                                        <p><c:out value="${form_b.six}"/></p>
                                        <h3>Seven</h3>
                                        <p><c:out value="${form_b.seven}"/></p>
                                        <h3>Eight</h3>
                                        <p><c:out value="${form_b.eight}"/></p>
                                        <h3>Nine</h3>
                                        <p><c:out value="${form_b.nine}"/></p>
                                        <h3>Ten</h3>
                                        <p><c:out value="${form_b.ten}"/></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </c:if>
            <c:if test="${form_c.form_level == 2}">
                <li class="list-group-item">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#form3">Form C</button>

                    <div class="modal fade" id="form3" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Form C</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                </div>
                                <div class="modal-body">
                                        <h3>One</h3>
                                        <p><c:out value="${form_c.one}"/></p>
                                        <h3>Two</h3>
                                        <p><c:out value="${form_c.two}"/></p>
                                        <h3>Three</h3>
                                        <p><c:out value="${form_c.three}"/></p>
                                        <h3>Four</h3>
                                        <p><c:out value="${form_c.four}"/></p>
                                        <h3>Five</h3>
                                        <p><c:out value="${form_c.five}"/></p>
                                        <h3>Six</h3>
                                        <p><c:out value="${form_c.six}"/></p>
                                        <h3>Seven</h3>
                                        <p><c:out value="${form_c.seven}"/></p>
                                        <h3>Eight</h3>
                                        <p><c:out value="${form_c.eight}"/></p>
                                        <h3>Nine</h3>
                                        <p><c:out value="${form_c.nine}"/></p>
                                        <h3>Ten</h3>
                                        <p><c:out value="${form_c.ten}"/></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </c:if>
            <c:if test="${form_d.form_level == 2}">
                <li class="list-group-item">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#form4">Form D</button>

                    <div class="modal fade" id="form4" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Form D</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <h3>One</h3>
                                    <p><c:out value="${form_d.one}"/></p>
                                    <h3>Two</h3>
                                    <p><c:out value="${form_d.two}"/></p>
                                    <h3>Three</h3>
                                    <p><c:out value="${form_d.three}"/></p>
                                    <h3>Four</h3>
                                    <p><c:out value="${form_d.four}"/></p>
                                    <h3>Five</h3>
                                    <p><c:out value="${form_d.five}"/></p>
                                    <h3>Six</h3>
                                    <p><c:out value="${form_d.six}"/></p>
                                    <h3>Seven</h3>
                                    <p><c:out value="${form_d.seven}"/></p>
                                    <h3>Eight</h3>
                                    <p><c:out value="${form_d.eight}"/></p>
                                    <h3>Nine</h3>
                                    <p><c:out value="${form_d.nine}"/></p>
                                    <h3>Ten</h3>
                                    <p><c:out value="${form_d.ten}"/></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </c:if>
        </ul>
    </div>
</body>
</html>