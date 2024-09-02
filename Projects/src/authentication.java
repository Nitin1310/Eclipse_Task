

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public authentication() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message=null;
    	HttpSession sess=null;
    	try
    	{
    		String finalid=null;
    		String finalpass=null;
    		String status=null;
    		ResultSet rs=null;
    		String name=null;
    		
    	    String userID=request.getParameter("userid");
    	    String password=request.getParameter("password");
    	    ServletContext sc=getServletContext();
    	    Connection con=(Connection)sc.getAttribute("mycon"); 
    	    Statement stmt=con.createStatement();
    	    rs=stmt.executeQuery("Select * from customerProjects where Mail_ID='"+userID+"' and Password='"+password+"'");
    	    if(rs.next())
    	    {
    	    	finalid="0";finalpass="1";status=rs.getString("Status"); name=rs.getString("Name");
    	   }
    	    if(finalid == "0" && finalpass == "1")
    	    {
    	    	if(status==null)
    	    		status="a";
    	    if(status == "Assign" || status.equals("Assign"))
    	    {
    	    	sess=request.getSession(true);
    	    	sess.setAttribute("name",name);
    	    	response.sendRedirect("index.jsp");
    	    	
    	    }
    	    else
    	    {
    	        message = "Please validate your account!";
    	      
    	        response.sendRedirect("Home.jsp?error="+message);
    	        
    	    }
    	    }
    	    else
    	    {
    	    	message = "Invalid ID or Password!";
    	        
    	        response.sendRedirect("Home.jsp?error="+message);
    	       
    	    }
    	}catch(Exception e)
    	{
    		message = "Can not connect to server try again...!"+e;
	        
	        response.sendRedirect("Home.jsp?error="+message);
	       
    	}
	}

}
