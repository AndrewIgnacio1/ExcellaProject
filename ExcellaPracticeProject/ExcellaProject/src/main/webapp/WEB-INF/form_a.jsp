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
              <li><a href="/dashboard">Home</a></li>
              <li><a href="/logout">Logout</a></li>
            </ul>

        </div>
        <div class="form_header"><img class="logosmall" src="img/excellalogo.png" alt="logo"></div>

        <div class="jumbotron">
            <h1 class="display-2">Form A | Personal Information</h1>
            <hr class="my-4">
            <p>Please fill in your personal information in the form below.</p>
        </div>



        <div class="container">
<<<<<<< HEAD
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
=======
            <form:form action = "/process_form_a" method = "post" modelAttribute="form_A">
              <div class="form-row">
                <div class="form-group col-md-5">
                  <form:label path="first_name" for="inputFirstName4">First Name</form:label>
                  <form:errors path="first_name" style="color: red;" />
                  <form:input type="text" path="first_name" name="first_name" class="form-control" id="inputEmail4" placeholder="First Name"/>
                                 
                </div>
                <div class="form-group col-md-5">
                  <form:label path="last_name" for="inputLastName4">Last Name</form:label>
                  <form:errors path="last_name" style="color: red;" />
                  <form:input type="text" path="last_name" name="last_name" class="form-control" id="inputEmail4" placeholder="Last Name"/>                  
                </div>
                <div class="form-group col-md-2">
                  <form:label path="middle_initial" for="inputMiddleInitial4">Middle Initial</form:label>
                  <form:errors path="middle_initial" style="color: red;" />
                  <form:input type="text" path="middle_initial" name="middle_initial" class="form-control" id="inputEmail4" placeholder="M.I."/>
>>>>>>> d0e0f51acea19f1189ea371447ed81c21982f836
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
<<<<<<< HEAD
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
=======
                  <form:label path="email" for="inputEmail4">Email</form:label>
                  <form:errors path="email" style="color: red;" />
                  <form:input type="email" path="email" name="email" class="form-control" id="inputEmail4" placeholder="Email"/>
                </div>
                <div class="form-group col-md-6">
                  <form:label path="number" for="inputContactNumber4">Contact Number</form:label>
                  <form:errors path="number" style="color: red;" />
                  <form:input type="text" path="number" name="number" class="form-control" id="inputEmail4" placeholder="Contact Number"/>
                </div>
              </div>
              <div class="form-group">
                <form:label path="address" for="inputAddress">Address</form:label>
                <form:errors path="address" style="color: red;" />
                <form:input type="text" path="address" name="address" class="form-control" id="inputAddress" placeholder="1234 Main St"/>
              </div>
              <div class="form-group">
                <form:label path="address2" for="inputAddress2">Address 2</form:label>
                <form:input type="text" path="address2" name="address2" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor"/>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <form:label path="city" for="inputCity">City</form:label>
                  <form:errors path="city" style="color: red;" />
                  <form:input type="text" path="city" name="city" class="form-control" id="inputCity"/>
                </div>
                <div class="form-group col-md-4">
                  <form:label path="state" for="inputState">State, Commonwealth, or Territory</form:label>
                  <form:select path="state" id="inputState" name="state" class="form-control">
                    <option selected>AL</option>
                    <option>AK</option>
                    <option>AZ</option>
                    <option>CA</option>
                    <option>CO</option>
                    <option>CT</option>
                    <option>DE</option>
                    <option>FL</option>
                    <option>GA</option>
                    <option>HI</option>
                    <option>ID</option>
                    <option>IL</option>
                    <option>IN</option>
                    <option>IA</option>
                    <option>KS</option>
                    <option>KY</option>
                    <option>LA</option>
                    <option>ME</option>
                    <option>MD</option>
                    <option>MA</option>
                    <option>MI</option>
                    <option>MN</option>
                    <option>MS</option>
                    <option>MO</option>
                    <option>MT</option>
                    <option>NE</option>
                    <option>NV</option>
                    <option>NH</option>
                    <option>NJ</option>
                    <option>NM</option>
                    <option>NY</option>
                    <option>NC</option>
                    <option>ND</option>
                    <option>OH</option>
                    <option>OK</option>
                    <option>OR</option>
                    <option>PA</option>
                    <option>RI</option>
                    <option>SC</option>
                    <option>SD</option>
                    <option>TN</option>
                    <option>TX</option>
                    <option>UT</option>
                    <option>VA</option>
                    <option>VT</option>
                    <option>WA</option>
                    <option>WV</option>
                    <option>WI</option>
                    <option>WY</option>
                    <option>AS</option>
                    <option>DC</option>
                    <option>FM</option>
                    <option>GU</option>
                    <option>MH</option>
                    <option>MP</option>
                    <option>PW</option>
                    <option>PR</option>
                    <option>VI</option>
                  </form:select>
                  <form:errors class="errors" path="state"></form:errors>
                </div>
                <div class="form-group col-md-2">
                  <form:label path="zip" for="inputZip">Zip</form:label>
                  <form:errors path="zip" style="color: red;" />
                  <form:input path="zip" type="text" name="zip" class="form-control" id="inputZip"/>
>>>>>>> d0e0f51acea19f1189ea371447ed81c21982f836
                </div>
              </div>
              <input type="hidden" id="user" name="user" value="${user.id}">
              <input type="submit" class="btn btn-primary" value="Submit"/>
            </form:form>
        </div>
    </body>

</html>