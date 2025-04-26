<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/updatepayment.css"> <!-- Link to the external CSS -->
</head>
<body>


<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String date = request.getParameter("date");
String method = request.getParameter("method");
String amount = request.getParameter("amount");
String currency = request.getParameter("currency");
String address = request.getParameter("address");
%>


<form action="updatepaymentservlet" method="post">
  <table>

    <tr>
      <td>ID :</td>
      <td><input type="text" name="id" value="<%=id%>" readonly></td>
    </tr>
    
    <tr>
      <td>Name:</td>
      <td><input type="text" name="name" value="<%=name%>" ></td>
    </tr>

    <tr>
      <td>Date :</td>
      <td><input type="date" name="date" value="<%=date%>" required></td>
    </tr>

    <tr>
      <td>Method :</td>
      <td>
        <select name="method" required>
          <option value="Credit Card" <%= method.equals("Credit Card") ? "selected" : "" %>>Credit Card</option>
          <option value="Debit Card" <%= method.equals("Debit Card") ? "selected" : "" %>>Debit Card</option>
          <option value="PayPal" <%= method.equals("PayPal") ? "selected" : "" %>>PayPal</option>
          <option value="Bank Transfer" <%= method.equals("Bank Transfer") ? "selected" : "" %>>Bank Transfer</option>
          <option value="Cash" <%= method.equals("Cash") ? "selected" : "" %>>Cash</option>
        </select>
      </td>
    </tr>

    <tr>
      <td>Amount :</td>
      <td><input type="number" name="amount" step="0.01" min="0" value="<%=amount%>" required></td>
    </tr>

    <tr>
      <td>Currency :</td>
      <td>
        <select name="currency" required>
          <option value="USD" <%= currency.equals("USD") ? "selected" : "" %>>USD</option>
          <option value="EUR" <%= currency.equals("EUR") ? "selected" : "" %>>EUR</option>
          <option value="LKR" <%= currency.equals("LKR") ? "selected" : "" %>>LKR</option>
          <option value="INR" <%= currency.equals("INR") ? "selected" : "" %>>INR</option>
          <option value="GBP" <%= currency.equals("GBP") ? "selected" : "" %>>GBP</option>
        </select>
      </td>
    </tr>

    <tr>
      <td>Billing Address :</td>
      <td><textarea name="address" rows="3" cols="30" required><%=address%></textarea></td>
    </tr>

    <tr>
      <td colspan="2" style="text-align: center;">
        <input type="submit" value="Update Payment">
      </td>
    </tr>

  </table>
</form>


</body>
</html>