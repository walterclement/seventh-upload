<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>


</head>
<body>

<center>

  <div style="color: teal; font-size: 30px">Add Cart</div>
  
  <form:form id="registerForm" commandName="prod" method="post"
   action="./addProduct">
   <table width="400px" height="150px">
  
  <c:if test="${!empty lstProduct}">
  <table border="1" bgcolor="#3498DB" width="600px">
    <tr
     style="background-color: #3498DB; color: white; text-align: center;"
     height="40px">
      <td>PRODUCT ID</td>
     <td>PRODUCT NAME</td>
     <td>PRODUCT PRICE</td>
     
     <td> Edit </td>
     <td>Delete</td>
    </tr>
    
    <c:forEach items="${lstProduct}" var="user">
     <tr
      style="background-color: #F4F6F6; color: #3498DB; text-align: center;"
      height="30px">
      
        <td>${user.pid}</td>
      <td>${user.name}</td>
      <td>${user.price}</td>
      
     
     
   
     </tr>
    </c:forEach>
    
   </table>
   </c:if>  
    </form:form>
</body>
</html>