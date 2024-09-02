

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		 {
			String id = request.getParameter("uid");
			String pass=request.getParameter("pass");
			String err="Invalid id OR password!";
			//step1 load the driver class 
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
			//step2 create the connection object 
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123"); 
			//step3 create the statement object 
			Statement stmt=con.createStatement(); 
			//step4 execute query 
			ResultSet rs=stmt.executeQuery("select * from USERS where ID='"+id+"'and PASS='"+pass+"'"); 
			//System.out.println(""+rs);
			if(rs.next())
				response.sendRedirect("Welcome.jsp?name="+rs.getString("NAME"));
			else
				response.sendRedirect("index.jsp?err="+err);
			   con.close(); 
  	     }catch(Exception e)
		 {
			 System.out.println(e);
		 } 
	}

}
