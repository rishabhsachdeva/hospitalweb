
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@page import="java.io.*" %>
<% 

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
Statement s = c.createStatement();

ResultSet rs=s.executeQuery("select name,image,info from doctor");
out.println("<center>");

out.println("our doctors");
out.println("</center>");

 while(rs.next())
 {
 String sq=rs.getString(1);

 String sq2=rs.getString(2);

 String sq3=rs.getString(3);

        try {
out.println("<a href='aman.jsp?lol=" +sq+"&lol2=" +sq2+"&lol3=" +sq3+" '>" + sq +"</a>");

 out.println("<br>");
 out.println("<br>");
}
 catch(Exception e){
 	out.println("exption is"+e);
 }
 }
 
%>
    <br>
<br>
<br>
<br>
<br>
<center><a href="his.jsp">home</a></center>

</body>
</html>