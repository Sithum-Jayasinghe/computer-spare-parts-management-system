<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
 <link rel="stylesheet" type="text/css" href="css/payment.css"> <!-- Link to the external CSS -->
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


<h2>Enter payment Details</h2>

<form action="insertpaymentservlet" method="post">
  <table>
  
   
     <tr>
      <td>Name:</td>
      <td><input type="text" name="name" required></td>
    </tr>

    <tr>
      <td>Date:</td>
      <td><input type="date" name="date" required></td>
    </tr>

    <tr>
      <td>Method:</td>
      <td>
        <select name="method" required>
          <option value="">Select Method</option>
          <option value="Credit Card">Credit Card</option>
          <option value="Debit Card">Debit Card</option>
          <option value="PayPal">PayPal</option>
          <option value="Bank Transfer">Bank Transfer</option>
          <option value="Cash">Cash</option>
        </select>
      </td>
    </tr>

    <tr>
      <td>Amount:</td>
      <td><input type="number" name="amount" step="0.01" min="0" required></td>
    </tr>

    <tr>
      <td>Currency:</td>
      <td>
        <select name="currency" required>
          <option value="">Select Currency</option>
          <option value="USD">USD</option>
          <option value="EUR">EUR</option>
          <option value="LKR">LKR</option>
          <option value="INR">INR</option>
          <option value="GBP">GBP</option>
        </select>
      </td>
    </tr>

    <tr>
      <td>Billing Address:</td>
      <td><textarea name="address" rows="3" cols="30" required></textarea></td>
    </tr>

    <tr>
      <td colspan="2" style="text-align: center;">
        <input type="submit" value="Submit Payment">
      </td>
    </tr>

  </table>
</form>


</body>
</html>