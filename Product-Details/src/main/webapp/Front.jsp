<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table.center {
	margin-left: auto;
	margin-right: auto;
	width: 300px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/Servlet">
		<table class="center">

			<tr>
				<td colspan=2 align="center"><h3>
						<u>PRODUCT DETAILS PORTAL</u>
					</h3></td>
			</tr>
			<tr>
				<td>Product Name:</td>
				<td><input type="text" name="product" /></td>
			</tr>
			<tr>
				<td>Product type:</td>
				<td><input type="text" name="type" /></td>
			</tr>
			<tr>
				<td>Product Price:</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td colspan=2><br /></td>
			</tr>
			<tr>
				<td colspan=2><center>
						<input type="submit" value="Submit" /><input type="reset"
							value="Reset" />
					</center></td>
			</tr>

		</table>
	</form>
</body>
</html>