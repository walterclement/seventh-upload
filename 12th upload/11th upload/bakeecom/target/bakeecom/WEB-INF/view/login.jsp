<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>LOGIN</title>
 <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/log.css'/>" rel="stylesheet"/>



  </head>
  <body>
    <nav class="navbar-fixed-top navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="home.jsp">Home</a></li>
      <li  class="active"><a href="login">LOGIN</a></li>
      <li><a href="regis1.jsp">REGISTRATION</a></li>
      <li><a href="abt.jsp">ABOUT US</a></li>
    </ul>
  </div>
</nav>
    <div class="container">
      <img src="<c:url value='resources/images/lognew.png'/>"/>
      <form>
        <div class="form-input">
          <input type="text" name="username"
          placeholder="Username">

        </div>
        <div class="form-input">
          <input type="password" name="password"
          placeholder="Password">
        </div>
        <input type="submit" name="submit"
        value="LOGIN"class="btn-login">
        <p>Forget Password</p>
      </form>

    </div>





   <script src="<c:url value='resources/https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'/>"/></script>

    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
  </body>
</html>
