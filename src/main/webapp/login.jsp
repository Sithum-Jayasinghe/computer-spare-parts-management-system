<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
</head>

<style>
    /* Full-page height */
    html, body {
      height: 100%;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    /* Centering the form using Flexbox */
    .login-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
      background-color: #f4f4f4; /* Light background for the page */
      flex-direction: column; /* Align items in a column */
    }

    form {
      background-color: #fff; /* White background for the form */
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px; /* Form width limit */
      position: relative; /* To place image inside */
    }

    h1 {
      text-align: center;
      color: #003366;
    }

    table {
      width: 100%;
    }

    td {
      padding: 10px;
    }

    input[type="email"], input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"] {
      width: 100%;
      padding: 20px;
      background-color: blue;
      color: white; /* Text is white */
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: darkblue; /* Dark blue background on hover */
      color: white; /* Keep the text white */
    }

    /* Style for the image inside the form */
    .form-image {
      width: 100%;
      max-width: 100%;
      height: auto;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px; /* Space between image and form fields */
    }
</style>
  
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





<div class="login-container">
    <!-- Image placed inside the form -->
    <form action="loginservlet" method="post">
      <img src="images/m7.jpg" alt="Hall Image" class="form-image"> <!-- Image inside the form -->
      <h1>Login</h1>
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
          <td colspan="2">
            <input type="submit" value="Submit">
          </td>
        </tr>
      </table>
    </form>
</div>
</body>
</html>