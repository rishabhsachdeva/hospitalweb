
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<script src="jquery-3.0.0.min.js" type="text/javascript"></script> 
</script>

	</head>
<body background="https://www.mysmartmove.com/sites/SmartMove/img/slider/secure.jpg">

<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>

<br>
<br>
<br>
<br><br><br><br>
<% 
String  s1  = (String) session.getAttribute("var");   
%>

<%
out.println("<center><font color='red' size='15'>INVALID CREDENTIALS OR UNREGISTERED USER</font> </center>");
out.println("<center><img src='http://cliparts.co/cliparts/pT7/rar/pT7rarzjc.png' height='200px' width='250px'></center>");
out.println("<center><font color='red' size='10'>NO PROBLEM LETS DO IT AGAIN</font> </center>");

response.setHeader("refresh","5;URL=http://localhost:8080/hos/login.jsp");
  %>
</body>
</html>
</body>
</html>