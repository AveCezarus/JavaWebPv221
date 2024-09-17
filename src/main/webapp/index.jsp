
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Product Table</title>
  <style>
    table {
      width: 50%;
      border-collapse: collapse;
    }
    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: center;
    }
  </style>
</head>
<body>

<h2>Product Table</h2>

<%

  String[] productNames = {"String 1", "String 2", "String 3"};
  double[] productPrices = {100.50, 200.75, 150.25};
%>

<table>
  <thead>
  <tr>
    <th>#</th>
    <th>Product Name</th>
    <th>Price</th>
  </tr>
  </thead>
  <tbody>
  <%
    for (int i = 0; i < productNames.length; i++) {
  %>
  <tr>
    <td><%= i + 1 %></td>
    <td><%= productNames[i] %></td>
    <td><%= productPrices[i] %></td>
  </tr>
  <%
    }
  %>
  </tbody>
</table>

</body>
</html>
