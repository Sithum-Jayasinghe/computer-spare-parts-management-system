<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/nav.css"> <!-- Link to the external CSS -->
  <link rel="stylesheet" type="text/css" href="css/displaypayment.css"> <!-- Link to the external CSS -->
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



<h2>payment Table</h2>

<input type="text" id="searchInput" placeholder="search...">

<table>

<tr>

<th>ID</th>
<th>Name</th>
<th>Date</th>
<th>Method</th>
<th>Amount</th>
<th>Currency</th>
<th>Address</th>
<th>Action</th>

</tr>


<c:forEach var="payment" items="${allpayments}">

<tr>

<td>${payment.id}</td>
<td>${payment.name}</td>
<td>${payment.date}</td>
<td>${payment.method }</td>
<td>${payment.amount}</td>
<td>${payment.currency}</td>
<td>${payment.address}</td>

<td>
<a href="updatepayment.jsp?id=${payment.id}&name=${payment.name}&date=${payment.date}&method=${payment.method}&amount=${payment.amount}&currency=${payment.currency}&address=${payment.address}">
<button>Update</button>
</a>

<form action="deletepaymentservlet" method="post">
<input type="hidden" name="id" value="${payment.id}">
<button onclick="return confirm('Are you sure you want to delete this item?');" class="delete-button">Delete</button>
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