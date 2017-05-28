
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class db extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rishabh");
                Statement s = c.createStatement();
    s.executeUpdate("create table aneet(name varchar2(120),pass varchar2(3300),ph varchar2(1500))");
                  
s.executeUpdate("insert into aneet values('Dr Vipin Anand','Dr. Vipin Anand started his oncology career at the esteemed and well known Cancer Institute, Adyar (Chennai). Dr. Sachdeva has performed surgeries at live surgical workshops and has been championing the cause for cancer awareness and been a crusader against Tobacco for the last 015 years through various cancer foundations. He is widely respected for his clinical and surgical skills.He is the President-elect of the Indian Association of Surgical Oncologists and until recently was also the President of Indian Society of Oncology. Prior to joining Max Healthcare, Dr. Sachdeva was associated with Rajiv Gandhi Cancer Institute','C:\\Users\\Rishabh sachdeva\\workspace\\hos\\WebContent\\images\\a.jpg')");
//s.executeUpdate("insert into dyna values('rishabh sachdeva','lung specialist was born on 15 july 1988 and is a vey humble guy')");
//s.executeUpdate("insert into dyna values('dhruv anand','kidney specialist was born on 15 july 1988 and is a vey humble guy')");
s.close();
            }catch(Exception e)
            {
            	System.out.println(e);
            }
	}
} 