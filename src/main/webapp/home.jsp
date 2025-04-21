<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
  <link rel="stylesheet" type="text/css" href="css/main1.css"> <!-- Link to the external CSS -->
  <link rel="stylesheet" type="text/css" href="css/footer.css"> <!-- Link to the external CSS -->
   <link rel="stylesheet" type="text/css" href="css/banner.css"> <!-- Link to the external CSS -->
   <link rel="stylesheet" type="text/css" href="css/text.css"> <!-- Link to the external CSS -->
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
             <a href="login.jsp">User Login</a>
             <a href="login.jsp">Admin Login</a>
            <a href="home.jsp">Logout</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</div>






<div class="banner-container">
  <img src="images/m1.jpeg" alt="Computer Spare Parts Banner" class="banner-image">
  <div class="overlay"></div>
</div>






<br><br><br><br><br><br>

<div>
  <!-- Page Title -->
  <h1 style="text-align:center;">Welcome to the Computer Spare Parts Management System</h1>

  <!-- System Overview -->
  <p style="text-align:center; max-width: 800px; margin: auto;">
    This system helps manage and track the inventory of computer spare parts including components like hard drives, RAM, motherboards, power supplies, and more. 
    You can add new items, manage payments, gather customer feedback, register suppliers, and maintain user records.
  </p>

  <!-- See More Button -->
  <div style="text-align:center;">
    <a href="insertitem.jsp" class="see-more-btn">See More</a>
    <!-- Horizontal Arrow under the button -->
    <div class="arrow-right">&#8594;</div>
  </div>
</div>






<br><br><br><br><br>


 
 <!-- First Row: 4 images -->
<div class="image-grid">
    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>
    

    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>
    
  
 
    <!-- Second Row: 4 images -->
    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m1.jpeg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>
</div>
 







<br><br><br><br><br>


<footer>
  <div>
    <hr>
    <p style="text-align: center;">
      &copy; 2025 Computer Spare Parts Management System. All rights reserved.<br>
      Contact: support@cspms.com | Phone: +1-800-123-4567
    </p>
  </div>
</footer>



</body>
</html>