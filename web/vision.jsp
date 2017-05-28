<html>

<body background="http://www.aadhunikschool.in/wp-content/uploads/Grey-website-background.jpg">	

<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%
//response.setIntHeader("Refresh", 60);
Date dNow = new Date( );
   SimpleDateFormat ft =new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
   out.println( "<h2 align=\"center\"><font color='red'>" + ft.format(dNow) + "</h2>");
 
%>


<h1><font color="green">
    <center>We are one of India?s leading providers of comprehensive, seamless and integrated world class healthcare services. With a network of 14 hospitals, we offer treatment across all 29 specialties. We have 2300+ leading doctors with international level expertise who are committed to provide highest standards of medical excellence at a fraction of international costs. Our NABH and ISO accredited hospitals offer best in class services to our patients. We understand seeking medical treatment outside your home can be physically and mentally difficult. So at Max, we are eager to get you home!</center>
</h1>

</h4>
<br>
<br>
<br>
<br>
<center><a href="his.jsp"><font color="red">home</a></center>

</body>
</html>