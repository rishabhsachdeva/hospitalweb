<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300);
body {
	color: #333;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
}
h1,
h1+p {
	margin: 30px 15px 0;
	font-weight: 300;
}
h1+p a {
	color: #333;
}
h1+p a:hover {
	text-decoration: none;
}
h2 {
	margin: 60px 15px 0;
	padding: 0;
	font-weight: 300;
}
.column {
	margin: 15px 15px 0;
	padding: 0;
}
.column:last-child {
	padding-bottom: 60px;
}
.column::after {
	content: '';
	clear: both;
	display: block;
}
.column div {
	position: relative;
	float: left;
	width: 150px;
	height: 50px;
	margin: 0 0 0 25px;
	padding: 0;
}
.column div:first-child {
	margin-left: 0;
}
.column div span {
	position: absolute;
	bottom: -20px;
	left: 0;
	z-index: -1;
	display: block;
	width: 150px;
	margin: 0;
	padding: 0;
	color: #444;
	font-size: 18px;
	text-decoration: none;
	text-align: center;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
	opacity: 0;
}
figure {
	position:absolute;
	width: 190px;
	height: 70px;
	top:500px;
	left:150px;
	margin: 0;
	padding: 0;
	background: #fff;
	overflow: hidden;
}
figures {
	position:absolute;
	width: 190px;
	height: 70px;
	top:500px;
	right:350px;
	margin: 0;
	padding: 0;
	background: #fff;
	overflow: hidden;
}
figure:hover+span {
	bottom: -36px;
	opacity: 1;
}

.hover07 figure img {
	-webkit-filter: blur(3px);
	filter: blur(3px);
	left:100px;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover07 figure:hover img {
	-webkit-filter: blur(0);
	left:100px;
	filter: blur(0);
}

.hover08 figures img {
	-webkit-filter: blur(3px);
	left:400px;
	filter: blur(3px);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover08 figures:hover img {
	left:400px;
	-webkit-filter: blur(0);
	filter: blur(0);
}
</style>



<body background="http://www.aadhunikschool.in/wp-content/uploads/Grey-website-background.jpg">	
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@page import="java.io.*" %>
<table border="2">
<tr>

<td><center><font color='red' size='5'> NAME  </font></center></td>
<td><center><font color='red' size='5'> EMAIL  </font></center></td>
<td><center><font color='red' size='5'> TIME  </font></center></td>
<td><center><font color='red' size='5'> PRICE  </font></center></td>

</tr>
<%
String email=request.getParameter("lol");

	out.println("<center><font color='red' size='5'>" + email +"</font></center>");
	//out.println("<center><font color='red' size='5'>" + pass +"</font></center>");

 try{
  Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                  Statement s = c.createStatement();

// String  s1="select * from cart  where   name='"+name+"' and pass='"+pass+"' ";
String  s1="select * from cart  where   email='"+email+"' ";

ResultSet rs=s.executeQuery(s1);
int sum=0;
while(rs.next())
{
%>
<tr>
<td><%out.println("<center><font color='red' size='5'>" + rs.getString(1)+ "</font></center>"); %></td>
<td><%out.println("<center><font color='red' size='5'>" + rs.getString(2)+ "</font></center>"); %></td>
<td><%out.println("<center><font color='red' size='5'>" + rs.getString(3)+ "</font></center>"); %></td>
        <td>
    <%
    int x=rs.getInt(4);
    sum+=x;
    out.println("<center><font color='red' size='5'>" + x + "</font></center>"); 
        %>
        </td>
       </tr>
        <%

}
%>


</table>
<% 
out.println("<center><font color='red' size='5'> TOTAL PRICE = " + sum + "</font></center>"); 
%> 
    <%
    rs.close();
    }

catch(Exception e)
{
	out.println(e);
}
%>
<div class="hover07 column">
		
<figure><a href="http://localhost:8080/hos/ordernow.jsp"><img src="http://www.mem-plex.com/mem-plexonline07/images/order-now.jpg" height='70' width='190'></a></figure>
</div>

<div class="hover08 column">
		
		<figures><a href="http://localhost:8080/hos/his.jsp"><img src="http://4bible.com/wp-content/uploads/2016/03/later.jpg" height='70' width='190'></a></figures>

		</div>
		
</body>
</html>