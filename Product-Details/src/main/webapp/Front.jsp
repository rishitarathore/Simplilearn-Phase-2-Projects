<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>
<form action="Servlet">

   <center>
	<h3> <u>PRODUCT DETAILS PORTAL</u> </h3>
    Product Name: <input type="text" name="product"/>
    <br/> <br/>
    Product type: <input type="text" name="type"/>
    <br/> <br/>
    Product Price: <input type="text" name="price"/>
    <br/> <br/>  
    <input type="submit" value="Submit"/>
    <input type="reset" value="Reset"/>
    </center>
</form>
</body>
</html>