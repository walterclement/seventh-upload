<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- .nametag{ -->

<!-- } -->
<nav class="navbar-fixed-top navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home1"><i class="glyphicon glyphicon-home"></i> Home</a></li>
    <li><a href="form"><i class="glyphicon glyphicon-plus-sign"></i> ADD PRODUCT</a></li>
      <li><a href="category">CATEGORY</a></li>
      
        <li><a href="supplier"><i class="glyphicon glyphicon-pencil"></i> SUPPLIER</a></li>
      <li><a href="productview"><i class="glyphicon glyphicon-pencil"></i>PRODUCT VIEW</a></li>
        
       <ul class="nav navbar-nav navbar-right"> 
       <li><form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
           
             <h5 style="color:white;">Welcome : ${pageContext.request.userPrincipal.name} |
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h5>
                                
                 </c:if>   
      <li><a href="memberShip"><i class="glyphicon glyphicon-log-in"></i> SIGNUP</a></li>
      <ul class="nav navbar-nav navbar-right">   
      <li><a href="login"><i class="glyphicon glyphicon-log-in"></i> LOGIN</a></li>
      <li><a href="loginew"><i class="glyphicon glyphicon-log-in"></i> ADMIN LOGIN</a></li>
      
      </ul>
      
    </ul>
  </div>
</nav>


</body>
</html>