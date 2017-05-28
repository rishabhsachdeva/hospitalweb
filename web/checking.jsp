<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body background="http://www.aadhunikschool.in/wp-content/uploads/Grey-website-background.jpg">	

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@page import="java.io.*" %>


<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String  s1  = (String) session.getAttribute("var");   
try
{
  Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                  Statement s = c.createStatement();

String  ss1="select name,age,email,time  from book where name='"+name+"' and email= '"+email+"' ";
ResultSet rs=s.executeQuery(ss1);
int flag=0;

while(rs.next())
{
	flag=1;
	out.println("<center>");

	out.println("<br>");out.println("<br>");out.println("<center><font color='red' size='5'>name= "+rs.getString(1)+" </font></center>");
out.println("</center>");

out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	
	out.println("<center>");
	out.println("<center><font color='red' size='5'>name= "+rs.getString(2)+" </font></center>");
	
out.println("</center>");
	
	
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	out.println("<center>");
	out.println("<center><font color='red' size='5'>name= "+rs.getString(3)+" </font></center>");

		out.println("</center>");
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");

	out.println("<center><font color='red' size='5'>name= "+rs.getString(4)+" </font></center>");

		out.println("</center>");
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");

	out.println("<center>");
	out.println("<center><font color='red' size='5'>be on time for your appointment </font></center>");

	out.println("</center>");
}
if(flag==0)
{
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");

	out.println("<center>");
	out.println("<center><font color='red' size='5'>sorry no such appointment booked</font></center>");

	out.println("</center>");
}
s.close();
}
catch(Exception e){System.out.println(e);}
%>
<br>
<br>
<br>
<br>
<br>
<center><a href="his.jsp">home</a></center>

</body>
</html>