
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="servlets">servlets</a>
<h2><%= request.getAttribute("hash")%></h2>
<p>Контроль: <%= request.getAttribute("controlStatus") %></p>


</body>
</html>
