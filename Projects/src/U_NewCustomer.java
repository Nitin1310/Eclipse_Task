

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class U_NewCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
      public U_NewCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String projectID=request.getParameter("projectId");
        String projectName=request.getParameter("projectName");
        String projectDuration=request.getParameter("projectDuration");
        String projectArea=request.getParameter("projectArea");
        String userName=request.getParameter("userName");
        String mailID=request.getParameter("mailID");
        String MobNo=request.getParameter("MobNo");
        String location=request.getParameter("location");
        String skills=request.getParameter("skills");
        String pay=request.getParameter("pay");
        try
        {
                 ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
                PreparedStatement ps= con.prepareStatement("insert into customerProjects(Project_ID,Project_Name,Project_Duration,Project_Area,Name,Mail_ID,Contact_No,Location,Skills,Expacted_Pay) values(?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, projectID);
                ps.setString(2, projectName);
                ps.setString(3, projectDuration);
                ps.setString(4, projectArea);
                ps.setString(5, userName);
                ps.setString(6, mailID);
                ps.setString(7, MobNo);
                ps.setString(8, location);
                ps.setString(9, skills);
                ps.setString(10, pay);
                int n=ps.executeUpdate();
                if(n>0)
                {
                String msg="You have applied successfully for Project\n"+projectName;
                request.getSession().setAttribute("Message", msg);
                response.sendRedirect("welcomeMessage.jsp");
                }
        }catch(Exception e)
        {
        e.printStackTrace();
        }
}
}
