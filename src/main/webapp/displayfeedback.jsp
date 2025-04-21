<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
  <link rel="stylesheet" type="text/css" href="css/dfeedback.css"> <!-- Link to the external CSS -->
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


<h2>feedback Table</h2>

<input type="text" id="searchInput" placeholder="search...">


<table>

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Type</th>
<th>Rating</th>
<th>Message</th>
<th>Action</th>

</tr>


<c:forEach var="feedback" items="${allfeedbacks}">

<tr>

<td>${feedback.id}</td>
<td>${feedback.name}</td>
<td>${feedback.email }</td>
<td>${feedback.type}</td>
<td>${feedback.rating}</td>
<td>${feedback.message}</td>

<td>
<a href="updatefeedback.jsp?id=${feedback.id}&name=${feedback.name}&email=${feedback.email}&type=${feedback.type}&rating=${feedback.rating}&message=${feedback.message}">
<button>Update</button>
</a>

<form action="deletefeedbackservlet" method="post">
<input type="hidden" name="id" value="${feedback.id}">
<button>Delete</button>
</form>
</td>

</tr>

</c:forEach>

</table>




<script>

function filterTable() {
    // Declare 
    var input, filter, table, tr, td, i, txtValue;

    // Get the input field and its value
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();

    // Get the table and its rows
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, except the header
    for (i = 1; i < tr.length; i++) { // Start at 1 to skip the header row
        tr[i].style.display = "none"; // Default to hiding the row
        td = tr[i].getElementsByTagName("td"); // Get all cells in the row
        for (var j = 0; j < td.length; j++) {
            if (td[j]) { // Ensure the cell exists
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = ""; // Show the row if a match is found
                    break; // Exit the loop for this row
                }
            }
        }
    }
}

// Add the event listener to trigger the filter function on input
document.getElementById("searchInput").addEventListener("input", filterTable);
</script>


</body>
</html>