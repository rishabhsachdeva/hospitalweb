<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
<style>
#i
{
font-size:200%;
height:900px;
top:900px;
}

</style>

  <body background="b1.jpg">
      <!--<div id="title">-->
      <%
          String name=request.getParameter("lol");
          out.println("<center><font size='5'><font color='red'>"+name+"</center>");
 out.println("<br>");
 out.println("<br>");
          %>

          <div id="i">
              <% String image=request.getParameter("lol2");%>
<!--<center><img src=image  width="230" height="230"></img></center>-->
<center><img src="https://thecliparts.com/wp-content/uploads/2016/05/free-doctor-clipart-9.png" width="230" height="230"></img></center>

<br>

<%
    String info=request.getParameter("lol3");
     out.println("<font size='4'><font color='red'>"+info);
         %>

</div>

  </body>
<br>
<center><a href="his.jsp">home</a></center>

</html>
