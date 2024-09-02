
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("Email");
	String addr=request.getParameter("addr");
	String pass=request.getParameter("pass");
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	//step2 create the connection object 
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
	PreparedStatement ps=con.prepareStatement("insert into USERS(ID,NAME,EMAIL,ADDRESS,PASS) values(?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, email);
	ps.setString(4, addr);
	ps.setString(5, pass);
	int check=ps.executeUpdate();
	if(check>0)
	{
		response.sendRedirect("register.jsp?msg=RecordUpdated");
	}
	else
			response.sendRedirect("register.jsp?msg=UpdateError");
	}catch(Exception e)
	{
		System.out.println(""+e);
	}
	}

}
