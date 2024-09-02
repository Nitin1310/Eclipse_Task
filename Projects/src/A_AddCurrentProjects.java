

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class A_AddCurrentProjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public A_AddCurrentProjects() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 try {
             ServletContext sc=getServletContext();
             Connection con=(Connection)sc.getAttribute("mycon");
          
             String btn = request.getParameter("btn");
             
             
             if(btn.equals("Insert"))
             {
             
            	 String name = request.getParameter("name");
             String loc = request.getParameter("location");
             String desc = request.getParameter("description");
             String dur = request.getParameter("duration");
             
             
             PreparedStatement ps= con.prepareStatement("insert into CurrentProjectList (Project_Name,Area,Duration,Description) values(?,?,?,?)");
             
             ps.setString(1,name);
             ps.setString(2,loc);
             ps.setString(3, dur);
             ps.setString(4, desc);
             
             ps.executeUpdate();
         response.sendRedirect("Admin_AddCurrentProject.jsp");
             }
             
             else
             {
            	 
            	 PreparedStatement ps1= con.prepareStatement("delete from CurrentProjectList where ID="+btn);
                 
            	 ps1.executeUpdate();
            	  response.sendRedirect("Admin_AddCurrentProject.jsp");
             }
         }
    	 
    	 catch(Exception e)
    	 {
    		 e.printStackTrace();
         }
	}

}
