

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A_ApprovelForm
 */

public class A_ApprovelForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_ApprovelForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
        String btn=request.getParameter("acceptbtn");
        String btn2=request.getParameter("declinebtn");
        ServletContext sc= getServletContext();
        Connection con= (Connection)sc.getAttribute("mycon");
        if(btn.equals("Accept"))
        {
                try
                {
                    PreparedStatement ps=con.prepareStatement("update customerProjects set Status='Assign' where Project_ID="+id+"");
                    
                    ps.executeUpdate();
                  /*  try
                    {
                        Connection con2= (Connection)sc.getAttribute("mycon");
                        PreparedStatement ps2=con.prepareStatement("update CurrentProjectList set Status=2 where ID="+id+"");
                    ps2.executeUpdate();
                    }catch(Exception e)
                    {
                    e.printStackTrace();
                    }*/
                    
                }catch(Exception e)
                {
                e.printStackTrace();
                }
                String msg="Thank you wish you all the best!";
               request.getSession().setAttribute("Message",msg);
                      response.sendRedirect("welcomeMessage.jsp");
        }
        else if(btn2.equals("Decline"))
        {
            try
            {
        PreparedStatement ps3=con.prepareStatement("update table customerProjects set Status='Not Assign' where Project_ID="+id+"");
        ps3.executeUpdate();
                     String msg="Approvel Decline!!!";
                     request.getSession().setAttribute("Message",msg);
                      response.sendRedirect("welcomeMessage.jsp");
        }catch(Exception e)
                {
                    e.printStackTrace();
                }
                }
	}

}
