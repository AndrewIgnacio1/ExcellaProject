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
			<li><a href="/dashboard">Home</a></li>
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
                    <th>Incomplete Forms</th>
                    <th>Pending Forms</th>
                    <th>Completed Forms</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>John_Doe</td>
                    <td>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn-forms" data-toggle="modal" data-target="#exampleModalLong1">View Forms</button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Incomplete Forms</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li><a href="#">Form A</a></li> 
                                        <li><a href="#">Form B</a></li>
                                        <li><a href="#">Form C</a></li>
                                        <li><a href="#">Form D</a></li>
                                    </ul>    
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </td>

                    <td>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn-forms" data-toggle="modal" data-target="#exampleModalLong2">View Forms</button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Pending Forms</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li><a href="#">Form E</a></li> 
                                        <li><a href="#">Form F</a></li>
                                        <li><a href="#">Form G</a></li>
                                        <li><a href="#">Form H</a></li>
                                    </ul>  
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </td>

                    <td>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn-forms" data-toggle="modal" data-target="#exampleModalLong3">View Forms</button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Completed Forms</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li><a href="#">Form I</a></li> 
                                        <li><a href="#">Form J</a></li>
                                        <li><a href="#">Form K</a></li>
                                        <li><a href="#">Form L</a></li>
                                    </ul>  
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </td>

                    <td>
                        <button type="button" class="btn-promote">Promote</button>
                        <button type="button" class="btn-delete">Delete</button>
                    </td>
                </tr>
                    
                <tr>
                    <td>Jane_Doe</td>
                    <td>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn-forms" data-toggle="modal" data-target="#exampleModalLong4">View Forms</button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Incomplete Forms</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li><a href="#">Form A</a></li> 
                                        <li><a href="#">Form B</a></li>
                                        <li><a href="#">Form C</a></li>
                                        <li><a href="#">Form D</a></li>
                                    </ul>    
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </td>

                    <td>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn-forms" data-toggle="modal" data-target="#exampleModalLong5">View Forms</button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Pending Forms</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li><a href="#">Form E</a></li> 
                                        <li><a href="#">Form F</a></li>
                                        <li><a href="#">Form G</a></li>
                                        <li><a href="#">Form H</a></li>
                                    </ul>  
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </td>

                    <td>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn-forms" data-toggle="modal" data-target="#exampleModalLong6">View Forms</button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Completed Forms</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li><a href="#">Form I</a></li> 
                                        <li><a href="#">Form J</a></li>
                                        <li><a href="#">Form K</a></li>
                                        <li><a href="#">Form L</a></li>
                                    </ul>  
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                    </td>
                    
                    <td>
                        <button type="button" class="btn-promote">Promote</button>
                        <button type="button" class="btn-delete">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>

</html>