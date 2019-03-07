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

        <title>Excella | Form A</title>
    </head>

    <body>
        <div class="nav_bar">

            <ul>
                <li><a routerLink="/" routerLinkActive="active">Home</a></li>
                <li><a routerLink="/" routerLinkActive="active">Logout</a></li>
            </ul>

        </div>
        <div class="form_header"><img class="logosmall" src="img/excellalogo.png" alt="logo"></div>

        <div class="jumbotron">
            <h1 class="display-2">Form A | Personal Information</h1>
            <hr class="my-4">
            <p>Please fill in your personal information in the form below.</p>
        </div>



        <div class="container">
            <form action="/process_form_a" method="post">
              <div class="form-row">
                <div class="form-group col-md-5">
                  <label for="inputFirstName4">First Name</label>
                  <input type="text" class="form-control" id="inputEmail4" name="first_name" placeholder="First Name">
                </div>
                <div class="form-group col-md-5">
                  <label for="inputLastName4">Last Name</label>
                  <input type="text" class="form-control" id="inputEmail4" name="last_name" placeholder="Last Name">
                </div>
                <div class="form-group col-md-2">
                  <label for="inputMiddleInitial4">Middle Initial</label>
                  <input type="text" class="form-control" id="inputEmail4" name="middle_initial" placeholder="M. I.">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputEmail4">Email</label>
                  <input type="email" class="form-control" id="inputEmail4" name="email" placeholder="Email">
                </div>
                <div class="form-group col-md-6">
                  <label for="inputContactNumber4">Contact Number</label>
                  <input type="text" class="form-control" id="inputEmail4" name="contact_number" placeholder="Contact Number">
                </div>
              </div>
              <div class="form-group">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" id="inputAddress" name="address" placeholder="1234 Main St">
              </div>
              <div class="form-group">
                <label for="inputAddress2">Address 2</label>
                <input type="text" class="form-control" id="inputAddress2" name="address2" placeholder="Apartment, studio, or floor">
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputCity">City</label>
                  <input type="text" class="form-control" id="inputCity" name="city">
                </div>
                <div class="form-group col-md-4">
                  <label for="inputState">State</label>
                  <select id="inputState" class="form-control" name="state">
                    <option selected>Choose...</option>
                    <option value="DC">DC</option>
                    <option value="MD">MD</option>
                    <option value="VA">VA</option>
                  </select>
                </div>
                <div class="form-group col-md-2">
                  <label for="inputZip">Zip</label>
                  <input type="text" class="form-control" id="inputZip" name="zip_code">
                </div>
              </div>
              <div class="form-group">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="gridCheck">
                  <label class="form-check-label" for="gridCheck">
                    By checking this, you verify all information are correct.
                  </label>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </body>

</html>