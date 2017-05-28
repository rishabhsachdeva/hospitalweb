import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String s,p,email;
	int flag=0;
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out;
            out = response.getWriter();
		s=request.getParameter("name");
		p=request.getParameter("pass");
                email=request.getParameter("email");
        HttpSession session = request.getSession();
    session.setAttribute("useremail", email);

                try {
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
		Connection c;
			c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                    
                  	if(!s.equals(""))
		{
			if(!p.equals(""))
			{
PreparedStatement ps=c.prepareStatement("select * from login");

ResultSet rs=ps.executeQuery();
while(rs.next())
{
	String w=rs.getString(1);
	String y=rs.getString(2);
if(s.equals(w)&&p.equals(y))
	{
		flag=1;
request.getSession().setAttribute("var", s);
request.getRequestDispatcher("his.jsp").forward(request, response);
	break;
}

}
}
			else
			{request.getSession().setAttribute("var", s);
request.getRequestDispatcher("error.jsp").forward(request, response);
	}
		}
		 if(s.equals("")||flag==0)
		{
			request.getSession().setAttribute("var", s);
			request.getRequestDispatcher("error.jsp").forward(request, response);

			
		}
		   c.close();
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex);
        }
	}

}