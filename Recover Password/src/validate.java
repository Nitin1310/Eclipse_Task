

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		String mail = request.getParameter("email");
		 ServletContext sc=getServletContext();
 	    Connection con=(Connection)sc.getAttribute("mycon"); 
 	    Statement stmt=con.createStatement();
 	    String query="select * from users where email='"+mail+"' or RECOVMAIL='"+mail+"'";
 	    ResultSet rs=stmt.executeQuery(query);
 	   
 	    if(rs.next())
 	    {
 	    	 try {
   	          String subject="Password Recovery";
   	          String msg=" Please open foolowing link to update your password <a href=" +"http://localhost:8080/Recover_Password/recover.jsp>Update Password"
   	          		+ "</a><br><br><i>Regards </i>";
   	          
   	          
   	          
   	          final String user="dellstorekamla@gmail.com";//change accordingly  
   	          final String pass="ilovemojo";  
   	            
   	          //1st step) Get the session object    
   	          Properties props = new Properties();  
   	         //change accordingly  
   	          props.put("mail.smtp.user",user); 
   	          props.put("mail.smtp.password", pass);
   	          props.put("mail.smtp.host", "smtp.gmail.com"); 
   	         
   	          props.put("mail.smtp.port", "587 "); 
   	         // props.put("mail.debug", "true"); 
   	          props.put("mail.smtp.auth", "true"); 
   	          props.put("mail.smtp.starttls.enable","true"); 
   	          props.put("mail.smtp.EnableSSL.enable","true");
   	          props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
   	          
   	          Session session = Session.getInstance(props, null);
   	          //session.setDebug(true);

   	          MimeMessage message = new MimeMessage(session);
   	          message.setFrom(new InternetAddress(user));

   	          // To get the array of addresses
   	          
   	              message.addRecipient(Message.RecipientType.TO, new InternetAddress(mail));
   	          

   	          message.setSubject(subject);
   	          message.setContent(msg, "text/html");

   	          Transport transport = session.getTransport("smtp");
   	          
   	              transport.connect("smtp.gmail.com", user, pass);
   	              transport.sendMessage(message, message.getAllRecipients());
                     String msg2="Approvel send successfully!";
                     request.getSession().setAttribute("Message", msg2);
                     response.sendRedirect("welcomeMessage.jsp");
                     
   }catch(Exception e)
   {
       e.printStackTrace();
   }
 	    	System.out.println("Recovery email has been send on your mail id");
 	    }
 	    else
 	    {
 	    	System.out.println("Please provide valid mail id");
 	    }
		}catch(Exception e)
		{
			System.out.println("Exception : "+e);
		}
	}

}
