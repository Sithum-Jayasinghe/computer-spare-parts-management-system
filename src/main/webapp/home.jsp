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
    <link rel="stylesheet" type="text/css" href="css/homebar.css"> <!-- Link to the external CSS -->
      <link rel="stylesheet" type="text/css" href="css/home.css"> <!-- Link to the external CSS -->
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









<!-- Slideshow Section (after navbar) -->

 <div class="slideshow-container">
  <img src="images/m9.jpg" class="slide-image" id="slideImage">
</div>


<br>


  <!-- Page Title -->
   <h1 class="slide-up" style="text-align:center;">
    Welcome to the Computer Spare Parts Management System 
  </h1>

  <!-- System Overview -->
    <p class="slide-up" style="text-align:center; max-width: 800px; margin: auto;">
    This system helps manage and track the inventory of computer spare parts including components like hard drives, RAM, motherboards, power supplies, and more. 
    You can add new items, manage payments, gather customer feedback, register suppliers, and maintain user records. <br><br>
  </p>
  
  <!-- JavaScript for animation -->
  <script>
    window.addEventListener('load', function () {
      const elements = document.querySelectorAll('.slide-up');

      elements.forEach((el, index) => {
        // Initial style
        el.style.opacity = '0';
        el.style.transform = 'translateY(50px)';
        el.style.transition = 'all 0.8s ease-out';

        // Add 'show' effect with delay
        setTimeout(() => {
          el.style.opacity = '1';
          el.style.transform = 'translateY(0)';
        }, index * 300); // stagger delay
      });
    });
  </script>
  
  
  
  
  

 <div style="text-align:center;">
  <a href="aboutus.jsp" class="see-more-btn">See More</a>
  <div class="arrow-right">&#8594;</div>
</div>
 
 <style>
  .see-more-btn {
    display: inline-block;
    padding: 15px 30px;
    color: blue;
    background-color: white;
    border: 5px solid blue;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: 0.3s;
  }

  .see-more-btn:hover {
    color: white;
    background-color: blue;
    border: 2px solid blue;
  }
</style>
 






<br><br>


 
 <!-- First Row: 4 images -->
<div class="image-grid">
    <div class="image-section">
        <img src="images/m11.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m12.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>
    

    <div class="image-section">
        <img src="images/m13.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m14.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>
    
  
 
    <!-- Second Row: 4 images -->
    <div class="image-section">
        <img src="images/m10.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m16.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m17.jpg" alt="Computer Spare Parts">
        <div class="description">
            <p>Explore high-quality computer spare parts including RAM, SSDs, motherboards, and more.</p>
            <a href="insertitem.jsp" class="hover-button">View Items</a>
        </div>
    </div>

    <div class="image-section">
        <img src="images/m19.jpg" alt="Computer Spare Parts">
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

 <script src="home.js"></script>

</body>
</html>