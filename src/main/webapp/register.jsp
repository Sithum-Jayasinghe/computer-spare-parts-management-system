<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
 <link rel="stylesheet" type="text/css" href="css/register.css"> <!-- Link to the external CSS -->
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



<br><br><br>


<!-- Hall Page Image with Form Inside -->
<div style="position: relative; text-align: center; margin-top: 20px;">
  <!-- Image -->
  <img src="images/m3.jpg" alt="Hall Page" style="width: 100%; max-width: 1200px; height: auto; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2);">

  <!-- Form inside the image -->
  <form action="userinsertservlet" method="post" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.7); padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2); width: 60%; max-width: 600px;">
    <table>

      <tr>
        <td>Name :</td>
        <td><input type="text" name="name" required></td>
      </tr>

      <tr>
        <td>Email :</td>
        <td><input type="email" name="gmail" required></td>
      </tr>

      <tr>
        <td>Password :</td>
        <td><input type="password" name="password" required></td>
      </tr>

      <tr>
        <td>Phone :</td>
        <td><input type="text" name="phone" required></td>
      </tr>

      <tr>
        <td colspan="2"><input type="submit" value="Submit"></td>
      </tr>

    </table>

    <h3 style="text-align: center; font-size: 18px; color: #003366; margin-top: 20px;">
      If you are already registered, 
      <a href="login.jsp" style="color: #003366; text-decoration: none; font-weight: bold; transition: color 0.3s ease, background-color 0.3s ease, transform 0.3s ease; padding: 2px 5px;">
        please log in
      </a>.
    </h3>

    <style>
      a:hover {
        color: red;
        background-color: yellow;
        transform: scale(1.1);
        border-radius: 6px;
        padding: 2px 5px;
      }
    </style>
  </form>
</div>




</body>
</html>