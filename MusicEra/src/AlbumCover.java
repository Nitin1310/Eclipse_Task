

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AlbumCover")
public class AlbumCover extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AlbumCover() {
        super();
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try
	        {
	        	String album=request.getParameter("album");
	             response.setContentType("image/jpeg");
	             byte[] rawBytes = null;
	            OutputStream o = response.getOutputStream();
	        Class.forName("oracle.jdbc.driver.OracleDriver");
	        Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
	        Statement st=con.createStatement();
	        ResultSet rs=st.executeQuery("Select distinct Album from SongsList where Album='"+album+"'");
	        if(rs.next())
	        {
	            rawBytes = rs.getBytes("Cover");
	             o.write(rawBytes); 
	             o.flush();
	             o.close();
	             return;
	       }
	        //OutputStream o = response.getOutputStream();
	        o.close();
	        rs.close();
	        st.close();
	        con.close();return;
	        }catch(Exception e)
	        {
	     } 
	}

}
