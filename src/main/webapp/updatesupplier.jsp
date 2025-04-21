<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String number = request.getParameter("number");
String address = request.getParameter("address");
String category = request.getParameter("category");
String company = request.getParameter("company");
%>

<form action="updatesupplierservlet" method="post">
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
<td>Number :</td>
<td><input type="text" name="number" value= "<%=number %>" required></td>
</tr>

<tr>
<td>Address :</td>
<td><input type="text" name="address" value= "<%=address %>" required></td>
</tr>

<tr>
<td>Category :</td>
<td><input type="text" name="category" value= "<%=category %>" required></td>
</tr>

<tr>
<td>Company :</td>
<td><input type="text" name="company" value= "<%=company %>" required></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit"></td>
</tr>


</table>
</form>
</body>
</html>