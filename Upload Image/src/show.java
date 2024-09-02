import java.sql.*;
import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/show")
public class show extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public show() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try
        {
             response.setContentType("image/jpeg");
             Blob ePhoto = null;
             byte[] rawBytes = null;
             ServletOutputStream o = response.getOutputStream();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select * from KidsDress");
        while(rs.next())
        {
            rawBytes = rs.getBytes(9);
            o.write(rawBytes);
        }
        }catch(Exception e)
	    {
        	e.printStackTrace();
	    }
	}

}
