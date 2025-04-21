<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
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
            <a href="home.jsp">Logout</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</div>


<h1>Login</h1>

<form action="loginservlet" method="post">
<table>


<tr>
<td>Email :</td>
<td><input type="email" name="gmail" required></td>
</tr>

<tr>
<td>Password :</td>
<td><input type="password" name="password" required></td>
</tr>


<tr>
<td colspan="2"><input type="submit" value="Submit"></td>
</tr>


</table>
</form>
</body>
</html>