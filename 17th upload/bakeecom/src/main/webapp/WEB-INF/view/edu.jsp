<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JOSH</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<nav class="navbar navbar-default">
  <div class="container-fluid">
   
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Ishiya</a>
    </div>

   
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home1">Home<span class="sr-only">(current)</span></a></li>
       <!--  <li><a href="aboutus">AboutUs</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">category <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="baby">Baby Toys</a></li>
            <li><a href="edu">Educational Toys</a></li>
            <li><a href="toysgallery">Gallery</a></li>
            <li class="divider"></li>
            <li><a href="#"></a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li> -->
      </ul>
</div>
<style>
div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 250px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
   height: 90%;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<div class="img">
<c:forEach items="${Products}" var="p">
<form commandName="prod">

 
    <img src="<c:url value="${p.img }"/>" width="300" height="200">
  </a>
  <div class="desc">$${p.price}</div>
  <div class="row" align="right"><button class="btn btn-default"><a commandName="prod" href="addToCart?id=${p.pid}">To Cart</a> </button></div>
</div>
</form>
</c:forEach>
</body>
</html>


    