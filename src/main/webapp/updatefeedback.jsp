<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/fupdate.css"> <!-- Link to the external CSS -->
</head>
<body>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String type = request.getParameter("type");
String rating = request.getParameter("rating");
String message = request.getParameter("message");
%>

<form action="updatefeedbackservlet" method="post">
  <table>

    <tr>
      <td>Feedback ID:</td>
      <td><input type="text" name="id" value="<%= id %>" readonly required></td>
    </tr>

    <tr>
      <td>Name:</td>
      <td><input type="text" name="name" value="<%= name %>" required></td>
    </tr>

    <tr>
      <td>Email:</td>
      <td><input type="email" name="email" value="<%= email %>" required></td>
    </tr>

    <tr>
      <td>User Type:</td>
      <td>
        <select name="type" required>
          <option value="">Select Type</option>
          <option value="Customer" <%= type.equals("Customer") ? "selected" : "" %>>Customer</option>
          <option value="Vendor" <%= type.equals("Vendor") ? "selected" : "" %>>Vendor</option>
          <option value="Visitor" <%= type.equals("Visitor") ? "selected" : "" %>>Visitor</option>
          <option value="Other" <%= type.equals("Other") ? "selected" : "" %>>Other</option>
        </select>
      </td>
    </tr>

    <tr>
      <td>Rating (1-5):</td>
      <td><input type="number" name="rating" value="<%= rating %>" min="1" max="5" required></td>
    </tr>

    <tr>
      <td>Message:</td>
      <td><textarea name="message" rows="3" cols="30" required><%= message %></textarea></td>
    </tr>

    <tr>
      <td colspan="2" style="text-align: center;">
        <input type="submit" value="Update Feedback">
      </td>
    </tr>

  </table>
</form>


  

</body>
</html>