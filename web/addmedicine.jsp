<%-- 
    Document   : addmedicine
    Created on : May 28, 2017, 11:05:24 PM
    Author     : rishabhsachdeva
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>

        <%
String name=request.getParameter("lol");        
String price=request.getParameter("lol2");        
            
Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                    out.println(name);
                    out.println(price);
                    
        %>
    </body>
</html>
