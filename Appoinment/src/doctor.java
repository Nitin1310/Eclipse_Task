

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/doctor")
public class doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public doctor() {
        super();
 
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String driver = this.getServletContext().getInitParameter("Driver");
		String Oracle=this.getServletContext().getInitParameter("Oracle");
		String Id = this.getServletContext().getInitParameter("ID");
		String pas=this.getServletContext().getInitParameter("Password");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String spec=request.getParameter("doctors");
		String area=request.getParameter("location");
		Connection con;
		try
		{
			Class.forName(driver);
            con=DriverManager.getConnection(Oracle+"",Id,pas);
			 String sql = "insert into Doctors(FName,LName,Specialitles,Area) values(?,?,?,?)";
        	 PreparedStatement stmt = con.prepareStatement(sql);
        	 stmt.setString(1, fname);
        	 stmt.setString(2, lname);
        	 stmt.setString(3, spec);
        	 stmt.setString(4, area);
        	 int b= stmt.executeUpdate();
 
        	 con.commit();
        	 if(b>0)
        		 	response.sendRedirect("Career.jsp?err=Record inserted successfully!");
        	 else
        		 response.sendRedirect("Career.jsp?err=Some problem occurs!");
		}catch(SQLException sqe)
		{
			 response.sendRedirect("Career.jsp?err=Exception: "+sqe);
		}
		catch(ClassNotFoundException cne)
		{
			 response.sendRedirect("Career.jsp?err=Exception: "+cne);
		}
	}

}
