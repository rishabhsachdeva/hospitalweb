<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<html>
        <body background="http://www.aadhunikschool.in/wp-content/uploads/Grey-website-background.jpg">	

        <%
            String email;
            
String  s1  = (String) session.getAttribute("var");  
		email=request.getParameter("email");
           // String time=request.getParameter("time");
            
out.println("<center><font color='red' size='5'> appointment booked successfully!!</font></center>");
out.println("<br> ");
out.println("<br> ");
out.println("<br> ");

out.println("<center><font color='red' size='5'> an email confirmation has also been sent to your registered email id that is "+ email +"</font></center>");

/*
String to=email;
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class",
      	"javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");

Session sessio = Session.getInstance(props,
 new javax.mail.Authenticator() {
 protected PasswordAuthentication getPasswordAuthentication() {
 return new PasswordAuthentication("aman.sacheva21@gmail.com","9868340747d");//change accordingly
 }
});

MimeMessage message = new MimeMessage(sessio);
 message.setFrom(new InternetAddress("aman.sacheva21@gmail.com"));//change accordingly
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
 message.setSubject("Hello");
 message.setText("hey your appointment has been booked on "+ time);
 
 Transport.send(message);
*/  
%>     
<br>
<br>
<br>
<br>
<br>
<center><a href="his.jsp">home</a></center>

</html>