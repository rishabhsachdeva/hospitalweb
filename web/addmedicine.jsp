<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>

        <%
String name=request.getParameter("lol");        
String rate=request.getParameter("lol2");        
try{
Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                    out.println(name);
                    out.println(rate);
        PreparedStatement ps=c.prepareStatement("insert into fitnessshop values(?,?)");
ps.setString(1, name);
ps.setString(2, rate);
            c.close();

}
 catch(Exception e){
 	out.println("exption is"+e);
 }

        %>
    </body>
</html>
