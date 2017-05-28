import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class cancel extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out;
            out = response.getWriter();
		
            String name=request.getParameter("PatientName");
String emailid=request.getParameter("Email_Id");

try
{
  Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
String sql = "DELETE FROM book WHERE name=?";
PreparedStatement s = c.prepareStatement(sql);        
s.setString(1, name);

s.executeUpdate();
            c.close();
        }catch( ClassNotFoundException | SQLException ex){
            out.println("Unable to connect to database"+ex);
        }
	request.getRequestDispatcher("his.jsp").forward(request, response);

	}
}