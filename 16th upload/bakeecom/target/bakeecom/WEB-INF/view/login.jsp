<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>LOGIN</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
 <style>

</style>
 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="home1">CAKE TO HOME</a>
    </div>

   
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
<!--         <li class="active"><a href="home1">Home<span class="sr-only">(current)</span></a></li> -->
<!--         <li><a href="aboutus">AboutUs</a></li> -->
<!--         <li class="dropdown"> -->
<!--           <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">category <span class="caret"></span></a> -->
<!--           <ul class="dropdown-menu" role="menu"> -->
<!--             <li><a href="jessieforhim">GIFTS FOR HIM</a></li> -->
<!--             <li><a href="jessieforher">GIFTS FOR HER</a></li> -->
<!--             <li><a href="jessiepersonalised">PERSONALISED GIFTS</a></li> -->
<!--             <li class="divider"></li> -->
<!--             <li><a href="#"></a></li> -->
<!--             <li class="divider"></li> -->
<!--             <li><a href="#">One more separated link</a></li> -->
<!--           </ul> -->
<!--         </li> -->
<!--       </ul> -->
<!-- <ul class="nav navbar-nav navbar-right"> -->
<!--                            <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li> -->
     </ul>
     
    </div>
  </div>
</nav>
 <center>
<div class="container">
    <div class="row">
        <form class="loginForm"   action="<c:url value="/login " />" method="post">
           <c:if test="${not empty error}">
           
           
                <h2><left>Enter Details</left></h2>
                <div class="error" style="color: red;">${error}</div>
                </c:if>          

          <c:if test="${not empty msg }">
          <div class="msg">${msg}</div>
          </c:if>
            
          <div class="form-group">
                    <label for="InputName">User Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="username" id="InputName" placeholder="User Name" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage">Password</label>
                    <div class="input-group">
<input type="password" class="form-control" name="password" id="InputName" placeholder="password" required>
      </div>
                </div>
                <input type="submit" name="submit" id="submit" value="submit" class="btn btn-info">
 <input type="submit" name="submit" id="submit" value="cancel" class="btn btn-info">
            </div>
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
        </form>
        </center> 
</body>
</html>