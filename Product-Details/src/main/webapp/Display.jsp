<%@ page import="java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html> 

<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

table.center {
  margin-left: auto; 
  margin-right: auto;
  width:400px;
}
</style>
<title>Product Details List</title>
</head>
<body>
 
<h3><u><center>PRODUCT DETAILS LIST</u></center></h3>

<% List eList = (List)session.getAttribute("products");
   request.setAttribute("eList", eList);
%>


<table class="center">
<tr>
<th>Name</th>
<th>Type</th>
<th>Price</th>
</tr>

    <c:forEach items="${eList}" var="temp">
        <tr>
            <td><c:out value="${temp.product}"/></td>
            <td><c:out value="${temp.type}"/></td>  
            <td><c:out value="${temp.price}"/></td>  
        </tr>
    </c:forEach>
</table>


</body> 
</html> 