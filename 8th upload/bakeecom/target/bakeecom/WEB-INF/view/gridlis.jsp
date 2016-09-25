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
  <table border="1" bgcolor="#3498DB" width="600px">
    <tr
     style="background-color: #3498DB; color: white; text-align: center;"
     height="40px">
      <td>PRODUCT ID</td>
     <td>PRODUCT NAME</td>
     <td>PRODUCT DESC</td>
     <td>PRODUCT PRICE</td>
     <td> Edit </td>
     <td>Delete</td>
    </tr>
    
    <c:forEach items="${productList}" var="user">
     <tr
      style="background-color: #F4F6F6; color: #3498DB; text-align: center;"
      height="30px">
      
        <td>${user.pid}</td>
      <td>${user.name}</td>
      <td>${user.description}</td>
      <td>${user.price}</td>
     
      <td><a href="edit?id=${user.pid}">Edit</a></td>
      <td><a href="deleteProduct?id=${user.pid}">Delete</a></td>
   
     </tr>
    </c:forEach>
    
   </table>
   </c:if>  

<br>
  <a href="form" style="color: #FDFEFE";><h5> Add Product</h5> </a>
 </center>
</body>
</html> 