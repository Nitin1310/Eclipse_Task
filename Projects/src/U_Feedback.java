

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class U_Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public U_Feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
        String email=request.getParameter("email");
        String msg=request.getParameter("msg");
        DateFormat time = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date() ;
        String datetime = time.format(date);
       
        try
        {
        ServletContext sc= getServletContext();
        Connection con= (Connection)sc.getAttribute("mycon"); 
        PreparedStatement ps= con.prepareStatement("insert into userFeedback (Name_,Email,Comment_,Time_) values(?,?,?,?)");
             
             ps.setString(1,name);
             ps.setString(2,email);
             ps.setString(3,msg);
             ps.setString(4, datetime);
                        
             ps.executeUpdate();
         response.sendRedirect("userFeedback.jsp");
    
    }catch(Exception  e)
    {
    System.out.println("Error: "+e);
    }
	}

}
