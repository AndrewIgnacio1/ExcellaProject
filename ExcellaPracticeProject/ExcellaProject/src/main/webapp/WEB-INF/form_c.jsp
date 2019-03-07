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
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Quicksand|Roboto+Condensed|Slabo+27px|Source+Sans+Pro" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Excella | Form C</title>
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
            <h1 class="display-2">Form C | Lorem Ipsum</h1>
            <hr class="my-4">
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
        </div>



        <div class="container">
            <form:form action = "/process_form_c" method = "post" modelAttribute="form_C">
            <div class="form-row">
                <div class="form-group col-md-5">
                  <form:label path="one" for="inputFirstName4">One</form:label>
                  <form:errors path="one" style="color: red;" />
                  <form:input type="text" path="one" name="one" class="form-control" id="inputEmail4" placeholder="Lorem Ipsum"/>
                                 
                </div>
                <div class="form-group col-md-5">
                  <form:label path="two" for="inputLastName4">Two</form:label>
                  <form:errors path="two" style="color: red;" />
                  <form:input type="text" path="two" name="two" class="form-control" id="inputEmail4" placeholder="Lorem Ipsum"/>                  
                </div>
                <div class="form-group col-md-2">
                  <form:label path="three" for="inputMiddleInitial4">Three</form:label>
                  <form:errors path="three" style="color: red;" />
                  <form:input type="text" path="three" name="three" class="form-control" id="inputEmail4" placeholder="Lorem Ipsum"/>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <form:label path="four" for="inputEmail4">Four</form:label>
                  <form:errors path="four" style="color: red;" />
                  <form:input type="text" path="four" name="four" class="form-control" id="inputEmail4" placeholder="Lorem Ipsum"/>
                </div>
                <div class="form-group col-md-6">
                  <form:label path="five" for="inputContactNumber4">Five</form:label>
                  <form:errors path="five" style="color: red;" />
                  <form:input type="text" path="five" name="five" class="form-control" id="inputEmail4" placeholder="Lorem Ipsum"/>
                </div>
              </div>
              <div class="form-group">
                <form:label path="six" for="inputAddress">Six</form:label>
                <form:errors path="six" style="color: red;" />
                <form:input type="text" path="six" name="six" class="form-control" id="inputAddress" placeholder="Lorem Ipsum"/>
              </div>
              <div class="form-group">
                <form:label path="seven" for="inputAddress2">Seven</form:label>
                <form:input type="text" path="seven" name="seven" class="form-control" id="inputAddress2" placeholder="Lorem Ipsum"/>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <form:label path="eight" for="inputCity">Eight</form:label>
                  <form:errors path="eight" style="color: red;" />
                  <form:input type="text" path="eight" name="eight" class="form-control" id="inputCity"/>
                </div>
                <div class="form-group col-md-4">
                  <form:label path="nine" for="inputState">Nine</form:label>
                  <form:select path="nine" id="inputState" name="nine" class="form-control">
                    <option selected>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                  </form:select>
                  <form:errors class="errors" path="nine"></form:errors>
                </div>
                <div class="form-group col-md-2">
                  <form:label path="ten" for="inputZip">Ten</form:label>
                  <form:errors path="ten" style="color: red;" />
                  <form:input path="ten" type="text" name="ten" class="form-control" id="inputZip"/>
                </div>
              </div>
              <input path="user" type="hidden" id="user_id" name="user_id" value="${user.id}">
              <input type="submit" class="btn btn-primary" value="Submit"/>
            </form:form>
        </div>
    </body>

</html>