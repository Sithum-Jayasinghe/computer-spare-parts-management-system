<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
  <link rel="stylesheet" type="text/css" href="css/item.css"> <!-- Link to the external CSS -->
   <link rel="stylesheet" type="text/css" href="css/background.css"> <!-- Link to the external CSS -->
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

  
<h2>Enter Item Details</h2>

<!-- Animated Container for Insert Item Form -->
<div id="formContainer" style="opacity: 0; transform: translateY(50px); transition: all 0.8s ease-out;">

  <form action="insertitemservlet" method="post"
        style="margin: auto; width: 100%; max-width: 600px; background-color: #e6f0ff;
               padding: 20px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.2);">

    <!-- Image inside the form -->
    <div style="text-align: center; margin-bottom: 20px;">
      <img src="images/m3.jpg" alt="Item Form Banner"
           style="max-width: 100%; height: auto; border-radius: 8px;">
    </div>

    <table style="margin: auto; border-spacing: 10px; width: 100%;">

      <tr>
        <td style="padding: 10px;">Name :</td>
        <td style="padding: 10px;"><input type="text" name="name" required style="width: 100%; padding: 8px;"></td>
      </tr>

      <tr>
        <td style="padding: 10px;">Category :</td>
        <td style="padding: 10px;"><input type="text" name="category" required style="width: 100%; padding: 8px;"></td>
      </tr>

      <tr>
        <td style="padding: 10px;">Quantity :</td>
        <td style="padding: 10px;"><input type="number" name="quantity" required style="width: 100%; padding: 8px;"></td>
      </tr>

      <tr>
        <td style="padding: 10px;">Price :</td>
        <td style="padding: 10px;"><input type="number" name="price" required style="width: 100%; padding: 8px;"></td>
      </tr>

      <tr>
        <td style="padding: 10px;">Date :</td>
        <td style="padding: 10px;"><input type="date" name="date" required style="width: 100%; padding: 8px;"></td>
      </tr>

      <tr>
        <td colspan="2" style="text-align: center; padding-top: 10px;">
          <input type="submit" value="Submit Item" class="submit-btn">
        </td>
      </tr>
      
  
      

    </table>
  </form>





  <!-- Submit Button Styling -->
  <style>
    .submit-btn {
      padding: 10px 25px;
      background-color: #007BFF;
      color: white;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 16px;
      transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .submit-btn:hover {
      background-color: #0056b3;
      transform: scale(1.05);
    }
  </style>

</div>
<!-- JavaScript Animation -->
<script>
  window.addEventListener('load', () => {
    const form = document.getElementById('formContainer');
    setTimeout(() => {
      form.style.opacity = '1';
      form.style.transform = 'translateY(0)';
    }, 150);
  });
</script>

</body>
</html>