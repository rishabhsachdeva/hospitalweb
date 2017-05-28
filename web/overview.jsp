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
<center>Max Healthcare Institute (BSE: 500271, NSE: Max) is a healthcare</center> 
<center>institute based in New Delhi, India.The Institute is a wholly owned </center>
<center>subsidiary company of Max India Limited. Established in 1985, Max </center>
 
</h1>
 
<h2><font color="red">
<center> India Limited is a Public Limited company listed in the Bombay Stock</center>
<center> Exchange and National Stock  Exchange of India with more than 37,000</center> 
<center>shareholders.</center>

</h2>

<h3><font color="green">
<center>The institute operates eleven centers in Delhi, NCR region providing</center> 
<center>health care services in more than 30 disciplines.[2] The company provides </center>
<center>patient services including nuclear medicine and cardiac imaging, labs, scans,</center>
<center> interventional cardiology, cardiac pacing and </center>
 
</h3>
 
<h4><font color="red">
<center> electrophysiology, neurosciences, orthopedics, gynecology and obstetrics,</center>
<center> pediatrics, cancer care, kidney transplant, bone marrow transplant, maternity</center> 
<center> services, diagnostic services, pediatric ophthalmology.</center>

</h4>
<br>
<br>
<br>
<br>
<center><a href="his.jsp"><font color="red">home</a></center>

</body>
</html>