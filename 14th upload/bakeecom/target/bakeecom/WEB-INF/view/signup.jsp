<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="H" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>   
<head>
<title>LogIn</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>



</div>
</br>

<div class="container">
    <div class="row">
        <form role="form">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="InputName">FIRST NAME</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="InputName" id="InputName" placeholder="FIRST NAME" required>
               
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">LAST NAME</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="InputName" id="InputName" placeholder="LAST NAME" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">EMAIL ID</label>
                    <div class="input-group">
                        <input type="text" name="username" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="EMAIL ID" required>
                   </div>
                </div>
                <div class="form-group">
                    <label for="Input">Enter password</label>
                    <div class="input-group">
                                          <input type="password" name="passwrd" class="form-control" id="Inputpassword" name="Inputpassword" placeholder="PASSWORD" required>
                 </div>
             <br>
                <input type="submit" name="submit" id="submit" value="login" class="btn btn-info ">
                  <input type="reset" name="submit" id="submit" value="reset" class="btn btn-info ">

            </div>
	</div>
        </form>
        
</body>
</html>