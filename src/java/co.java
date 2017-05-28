import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class co extends HttpServlet {
	private static final long serialVersionUID = 1L;
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out;
            out = response.getWriter();
		
            String name=request.getParameter("name");
String age=request.getParameter("age");
String email=request.getParameter("email");
String time=request.getParameter("time");

try
{
  Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
Statement s = c.createStatement();
String rate="500";
String  ss1="insert into book values('"+name+"','"+age+"','"+email+"','"+time+"')";
String  ss2="insert into cart values('"+name+"','"+email+"','"+time+"','"+rate+"')";

s.executeUpdate(ss1);
s.executeUpdate(ss2);
request.setAttribute("email", email);

//request.setAttribute("time", time);
request.getRequestDispatcher("emailconfirm.jsp").forward(request, response);
            c.close();
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex);
        }
	}

}