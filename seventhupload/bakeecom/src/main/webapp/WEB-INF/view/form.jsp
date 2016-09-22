<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
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
   action="./addProduct" enctype="multipart/form-data">
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
    
    
     
     <%-- <td>
     <form:select path="cname">
     <form:option value="-1" label="Select a Category"/>     
     <form:options items="${categoryList}" itemValue="cname" itemLabel="cname"/>  
     </form:select>
     </td> --%>
     
     <td>
    <form:select path="cname" >    
       <option value="-1">Select Category type</option>
       <c:forEach items="${lstCategory}" var="category">
        <option value="${category.cname}">${category.cname}</option>
       </c:forEach>
      </form:select>
     </td>
     
     <tr>
     <td></td>
     <td>
     <form:select path="sname" >    
       <option value="-1">Select Supplier type</option>
       <c:forEach items="${lstSupplier}" var="supplier">
        <option value="${supplier.sname}">${supplier.sname}</option>
       </c:forEach>
      </form:select>
     </td>
     </tr>
      <tr>
      <td></td>
     <td> <input name="file" id="fileToUpload" type="file"  />
     </td>
     <td> <form:hidden path="img" value="${img}"/></td>
		
   		</tr>
    <tr>
     <td></td>
     <td><input type="submit" value="Save" /></td>
    </tr>
   </table>
  </form:form>


<a href="gridlis" style="color: #FDFEFE";>Click Here to see Product List</a>

 </center>
 <img src="<c:url value="${img}"/>" alt="image" height="100px" weight="100px"/>

</body>
</html>