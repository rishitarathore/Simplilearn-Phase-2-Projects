<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse; padding =12px 15px;
	text-align: center;
}

table.center {
	margin-left: auto;
	margin-right: auto;
	width: 400px;
}
</style>
<title>Product Details List</title>
</head>
<body>

	<h3>
		<u><center>PRODUCT DETAILS LIST</center></u>
		
	</h3>

	<% List eList = (List)session.getAttribute("products");
   request.setAttribute("eList", eList);
%>


	<table class="center">
		<tr>
			<th>S. No.</th>
			<th>Name</th>
			<th>Type</th>
			<th>Price</th>
		</tr>

		<c:set var="productList" scope="session" value="${products}" />
		<% int i = 1; %>
		<c:forEach items="${productList}" var="temp">

			<tr>
				<td><%= i %> <% i++; %></td>
				<td><c:out value="${temp.product}" /></td>
				<td><c:out value="${temp.type}" /></td>
				<td><c:out value="${temp.price}" /></td>
			</tr>
		</c:forEach>

		<!-- send front page (store the product list) -->
	</table>
	<br />

	<div style="text-align: center">
		<a href="Front.jsp">
			<button style="">Go Back</button>
		</a>
	</div>

</body>
</html>
