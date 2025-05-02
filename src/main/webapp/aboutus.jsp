<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
<link rel="stylesheet" type="text/css" href="css/about.css">
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


    <div class="header">
        <h1>About Us</h1>
    </div>

    <div class="content">
        <h2>Welcome to the Computer Spare Parts Management System</h2>
        <p>
            This system is designed to efficiently manage and track all types of computer spare parts, 
            ensuring smooth operations for IT departments, service centers, and retailers.
        </p>

        <h3>Key Features:</h3>
        <ul>
            <li>Inventory tracking for all parts.</li>
            <li>Search and filter spare parts by model and category.</li>
            <li>Low-stock alerts and restocking notifications.</li>
            <li>Reports and history of item usage.</li>
        </ul>

        <h3>Our Mission</h3>
        <p>
            To make spare parts management easier, smarter, and error-free by offering an intuitive digital platform.
        </p>

        <h3>Contact Us</h3>
        <p>
            <strong>Email:</strong> support@sparepartsmanager.com<br>
            <strong>Phone:</strong> +94 77 123 4567
        </p>
    </div>

</body>
</html>