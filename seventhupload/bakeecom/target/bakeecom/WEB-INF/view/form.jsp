<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add products</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/form.css'/>" rel="stylesheet"/>
</head>
<body>
<%@include file="header.jsp" %>
 <center>

  <div style="color: teal; font-size: 30px">Add Product</div>



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
  <form:form id="registerForm" commandName="prod" method="post"
   action="./addProduct">
   <table width="400px" height="150px">
    <tr>
     <td><label for="name">PRODUCT NAME</label>
     </td>
     <td><form:input path="name"/>
     </td>
    </tr>
    <tr>
     <td><form:label path="description">PRODUCT DESC</form:label>
     </td>
     <td><form:input path="description" />
     </td>
    </tr>
    <tr>
     <td><form:label path="price">PRODUCT PRICE</form:label>
     </td>
     <td><form:input path="price" />
     </td>
     </tr>
    
    <td></td>
     
     <td>
     <form:select path="category.cname">
     <option value="-1">Select a Category</option>
     <c:forEach items="${category}" var="category">
     <option value="${category.cname}"></option>
       </c:forEach>
  
     </form:select>
     </td>
     
     <tr>
     <td></td>
     <td>
     <select>
     <option value="brown">Volvo</option>
     <option value="saab">Saab</option>
     <option value="mercedes">Mercedes</option>
     <option value="audi">Audi</option>
     </select>
     </td>
     </tr>
     
   
    <tr>
     <td></td>
     <td><input type="submit" value="Save" /></td>
    </tr>
   </table>
  </form:form>


<a href="gridlis" style="color: #FDFEFE";>Click Here to see Product List</a>

 </center>

</body>
</html>