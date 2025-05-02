<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User profile</title>
<link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
</head>
<body>

<!-- Navigation Bar -->
<div>
  <nav class="navbar">
    <div class="nav-container">
      <!-- Left Navigation Links -->
      <div class="nav-links-left">
       <a href="insertitem.jsp">Item</a>
         <a href="insertsupplier.jsp">Supplier</a>
        <a href="insertpayment.jsp">Payment</a>
        <a href="insertfeedback.jsp">Feedback</a>
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
             <a href="login.jsp">User Login</a>
             <a href="login.jsp">Admin Login</a>
            <a href="home.jsp">Logout</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</div>



<h1>User Profile</h1>
<h2>ID: ${user.id}</h2>
<h2>Name: ${user.name}</h2>
<h2>Email: ${user.gmail}</h2>
<h2>Password: ${user.password}</h2>
<h2>Phone: ${user.phone}</h2>




<a href="updateprofile.jsp?id=${user.id}&name=${user.name}&gmail=${user.gmail}&password=${user.password}&phone=${user.phone}">
<button>Update</button>
</a>


<form action="accountdeleteservlet" method="post">
<input type="hidden" name="id" value="${user.id}">
<button>Delete</button>
</form>


</body>
</html>