

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String driver = this.getServletContext().getInitParameter("Driver");
		String Oracle=this.getServletContext().getInitParameter("Oracle");
		String Id = this.getServletContext().getInitParameter("ID");
		String pas=this.getServletContext().getInitParameter("Password");
		String btn = request.getParameter("reg");
		String email=request.getParameter("email");
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		String name=request.getParameter("Name");
		String profile=request.getParameter("Profile");
		String desc=request.getParameter("description");
		String skills=request.getParameter("skills");
		String mob=request.getParameter("Mob");
		String addr=request.getParameter("address");
		String university=request.getParameter("University");
		String college=request.getParameter("College");
		String degree=request.getParameter("Degree");
		String start=request.getParameter("start");
		String end=request.getParameter("end");
		String account=request.getParameter("account");
		String pic = request.getParameter("profilepic");
		FileInputStream fis=null;
		  try
	         {
	        	 Class.forName(driver);
	             con=DriverManager.getConnection(Oracle+"",Id,pas);
	         	  
	             if(!btn.equals("Register"))
	             {
	            	 String sql = "insert into UserProfile(Email,UserId,Pass,AccountType) values(?,?,?,?)";
	            	 PreparedStatement stmt = con.prepareStatement(sql);
	            	 stmt.setString(1, email);
	            	 stmt.setString(2, user);
	            	 stmt.setString(3, pass);
	            	 stmt.setString(4, account);
	            	 int b= stmt.executeUpdate();
	     
	            	 con.commit();
	            	 if(b>0)
	            		 	response.sendRedirect("user.jsp?user="+user);
	            	 else
	            		 System.out.println("Some Error");
	             }
	             else
	             {
	            	 String sql = "update UserProfile set Name =?, Profile_=?,About_You=?,Skills=?,"
	            	 		+ "Mob=?,Address=?,University=?,College=?,StartAt=?,EndAt=?,ProfilePic=? where UserId=?";
	            	 PreparedStatement stmt = con.prepareStatement(sql);
	            	 
	            	 stmt.setString(1, name);
	            	 stmt.setString(2, profile);
	            	 stmt.setString(3, desc);
	            	 stmt.setString(4, skills);
	            	 stmt.setString(5, mob);
	            	 stmt.setString(6, addr);
	            	 stmt.setString(7, university);
	            	 stmt.setString(8, college);
	            	 stmt.setString(9, start);
	            	 stmt.setString(10, end);

	            	 try
	            	 {
	            	 File f1 = new File(pic);
	            	 fis = new FileInputStream(f1);
	            	stmt.setBinaryStream(11, fis,(int) f1.length());
	            	 }catch(IOException ioe)
	            	 {
	            		 System.out.println("Problem "+ioe);
	            	 }
	            	stmt.setString(12, request.getParameter("u"));
	            	 int b= stmt.executeUpdate();
	            	 con.commit();
	            	 if(b>0)
	            		 	response.sendRedirect("CoderHub.jsp?msg=Registration successfully!");
	            	 else
	            		 System.out.println("Some Error");
	             }
	         }catch(Exception e)
		  {
	        	 System.out.println("Error2 : "+e);
		  }
		  
	}

}
