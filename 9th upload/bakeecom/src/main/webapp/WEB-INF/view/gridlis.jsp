<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Products</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/gridl.css'/>" rel="stylesheet"/>
	
</head>
<body>
<%@include file="header.jsp" %>
 <center>

  <div style="color: #080808; font-size: 30px"><h3>Grid View of Products</h3></div>
   

  <c:if test="${!empty productList}">
  
   
    
    <c:forEach items="${productList}" var="user">
      <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="<c:url value="${user.img}"/>" alt="image" height="100px" width="100px"/>
      <div class="caption">
        <h3>${user.name}</h3>
        <h4>RS:${user.price}</h4>
        <p>${user.description}</p>
        
        <p><a href="edit?id=${user.pid}" class="btn btn-primary" role="button">Edit</a> <a href="deleteProduct?id=${user.pid}" class="btn btn-default" role="button">Delete</a></p>
      </div>
    </div>
  </div>
</div>
    </c:forEach>
    
   </table>
   </c:if>  

<br>
  <a href="form" style="color: #FDFEFE";><h5> Add Product</h5> </a>
 </center>
</body>
</html> 