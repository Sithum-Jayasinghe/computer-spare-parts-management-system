<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
 <link rel="stylesheet" type="text/css" href="css/feedback.css"> <!-- Link to the external CSS -->
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

<h2>Enter Feedback Details</h2>

<form action="insertfeedbackservlet" method="post">
  <table>

    <tr>
      <td>Name:</td>
      <td><input type="text" name="name" required></td>
    </tr>

    <tr>
      <td>Email:</td>
      <td><input type="email" name="email" required></td>
    </tr>

    <tr>
      <td>User Type:</td>
      <td>
        <select name="type" required>
          <option value="">Select Type</option>
          <option value="Customer">Customer</option>
          <option value="Vendor">Vendor</option>
          <option value="Visitor">Visitor</option>
          <option value="Other">Other</option>
        </select>
      </td>
    </tr>

    <tr>
      <td>Rating (1-5):</td>
      <td><input type="number" name="rating" min="1" max="5" required></td>
    </tr>

    <tr>
      <td>Message:</td>
      <td><textarea name="message" rows="3" cols="30" placeholder="Enter your feedback here..." required></textarea></td>
    </tr>

    <tr>
      <td colspan="2" style="text-align: center;">
        <input type="submit" value="Submit Feedback">
      </td>
    </tr>

  </table>
</form>


</body>
</html>