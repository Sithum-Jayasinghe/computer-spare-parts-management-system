<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/updateitem.css"> <!-- Link to the external CSS -->
</head>
<body>

<body>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String quantity = request.getParameter("quantity");
String price = request.getParameter("price");
String date = request.getParameter("date");
%>

<form action="updateitemservlet" method="post">
<table>

<tr>
<td>ID :</td>
<td><input type="text" name="id" value= "<%=id %>" readonly></td>
</tr>

<tr>
<td>Name :</td>
<td><input type="text" name="name" value= "<%=name %>" required></td>
</tr>

<tr>
<td>Category :</td>
<td><input type="text" name="category" value= "<%=category %>" required></td>
</tr>

<tr>
<td>Quantity :</td>
<td><input type="number" name="quantity" value= "<%=quantity %>" required></td>
</tr>

<tr>
<td>Price :</td>
<td><input type="number" name="price" value= "<%=price %>" required></td>
</tr>

<tr>
<td>Date :</td>
<td><input type="date" name="date" value= "<%=date %>" required></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Update Item"></td>
</tr>


</table>
</form>
</body>
</html>