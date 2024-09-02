

import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/authentication")
public class authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
   Connection con;
   ResultSet rs;
    public authentication() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess=null;
		String driver = this.getServletContext().getInitParameter("Driver");
		String Oracle=this.getServletContext().getInitParameter("Oracle");
		String Id = this.getServletContext().getInitParameter("ID");
		String pas=this.getServletContext().getInitParameter("Password");
		String user=request.getParameter("userid");
		String pass=request.getParameter("password");
		try
		{
			Class.forName(driver);
            con=DriverManager.getConnection(Oracle+"",Id,pas);
		Statement stmt=con.createStatement();
	    rs=stmt.executeQuery("select * from UserProfile where Email='"+user+"' or UserId='"+user+"' and pass='"+pass+"'");
	    if(rs.next())
	    {
	    	sess=request.getSession(true);
	    	sess.setAttribute("user",user);
	    	response.sendRedirect("UCoder.jsp");
	    }
	    else
	    {
	    	System.out.println("Failed");
	    }
	    }catch(Exception e)
		{
	    	response.sendRedirect("CoderHub.jsp?msg=Invalid ID OR Password!");
		}
	}

}
