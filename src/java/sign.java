import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class sign extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out=response.getWriter();
		String s=request.getParameter("name");
		String p=request.getParameter("pass");
		String email=request.getParameter("email");
		String b=request.getParameter("blood");
		try {

                    Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                    
		if(!s.equals(""))
		{
			if(!p.equals(""))
			{

PreparedStatement ps=c.prepareStatement("insert into login values(?,?,?,?)");
ps.setString(1, s);
ps.setString(2, p);
ps.setString(3, email);
ps.setString(4, b);
ps.executeUpdate();

response.sendRedirect("http://localhost:8080/hos/login.jsp");
}
			else
			{
				out.println("no field should be empty");
				response.setHeader("refresh","2;http://localhost:8080/hos/signup.jsp");
				
			}
			
					
		}
		else
		{
			out.println("no field should be empty");

			response.setHeader("refresh","2;http://localhost:8080/hos/signup.jsp");
			
		}
		}
		 catch (Exception e) {
				e.printStackTrace();
			}
	}

}
