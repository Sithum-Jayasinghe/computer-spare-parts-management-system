<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
  <link rel="stylesheet" type="text/css" href="css/item.css"> <!-- Link to the external CSS -->
</head>
<body>

<!-- Navigation Bar -->
<div>
  <nav class="navbar">
    <div class="nav-container">
      <!-- Left Navigation Links -->
      <div class="nav-links-left">
        <a href="insertfeedback.jsp">Feedback</a>
        <a href="insertitem.jsp">Item</a>
        <a href="insertpayment.jsp">Payment</a>
        <a href="insertsupplier.jsp">Supplier</a>
        <a href="contactus.jsp">Contact Us</a>
      </div>

      <!-- Right Side: Register + Dropdown -->
      <div class="nav-links-right">
        <a href="register.jsp">Register</a>

        <!-- Dropdown for Login/Logout -->
        <div class="dropdown">
          <button class="dropdown-btn">Account ▾</button>
          <div class="dropdown-content">
            <a href="profile.jsp">Profile</a>
            <a href="login.jsp">Login</a>
            <a href="home.jsp">Logout</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</div>

  
<h2>Enter Item Details</h2>

<form action="insertitemservlet" method="post">
<table>

<tr>
<td>Name :</td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td>Category :</td>
<td><input type="text" name="category" required></td>
</tr>

<tr>
<td>Quantity :</td>
<td><input type="number" name="quantity" required></td>
</tr>

<tr>
<td>Price :</td>
<td><input type="number" name="price" required></td>
</tr>

<tr>
<td>Date :</td>
<td><input type="date" name="date" required></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit Item"></td>
</tr>


</table>
</form>

</body>
</html>