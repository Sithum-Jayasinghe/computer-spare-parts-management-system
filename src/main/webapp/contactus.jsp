<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
<link rel="stylesheet" type="text/css" href="css/contact.css"> <!-- Link to the external CSS -->
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



<!-- Contact Us Form -->
<div class="contact-form-container">
  <h2>Contact Us</h2>
  <form action="contactus.jsp" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required />
    </div>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required />
    </div>

    <div class="form-group">
      <label for="subject">Subject:</label>
      <input type="text" id="subject" name="subject" required />
    </div>

    <div class="form-group">
      <label for="message">Message:</label>
      <textarea id="message" name="message" rows="5" required></textarea>
    </div>

    <button type="submit" class="submit-btn">Send Message</button>
  </form>
</div>





</body>
</html>