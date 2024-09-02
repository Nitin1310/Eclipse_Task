

import java.io.IOException;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.Random;

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

public class A_Approvel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final Random RANDOM = new SecureRandom();
     public static final int PASSWORD_LENGTH = 8;
  
    public A_Approvel() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pass1=generateRandomPassword();
        String to=null;
        String name=null;
        String cid=null;
        String pid=null;
         cid=request.getParameter("applybtn");
        String amount=request.getParameter(""+cid);
        pid=request.getParameter("h"+cid);
                ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
        try
        {
                
                   Statement stmt=con.createStatement(); 
               
                                                             
                 String query = "select Mail_ID,Name from customerProjects where Customer_ID="+cid+"";
                 ResultSet rs = stmt.executeQuery(query);
                 if(rs.next())
                 {
                 to=rs.getString("Mail_ID");
                 name=rs.getString("Name");
                 }
        }catch(Exception e)
        {
        e.printStackTrace();
        }
        try
        {
        PreparedStatement ps=con.prepareStatement("update customerProjects set Password='"+pass1+"' where Customer_ID="+cid+"");
        ps.executeUpdate();
        }catch(Exception e)
        {
        e.printStackTrace();
        }
         try {
    	          String subject="PROJECT APPROVAL";
    	          String msg="your login id : "+to+".Your password : "+pass1+". Please open foolowing link to check status of your applied project -<a href='http://localhost:8080/Projects/Approvel_Form.jsp?PID="+pid+"&CID="+cid+"'>Click Here</a>\nThanks";
    	          
    	          
    	          
    	          final String user="coderhub112@gmail.com";//change accordingly  
    	          final String pass="c0der@hub";  
    	            
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
    	          
    	              message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
    	          

    	          message.setSubject(subject);
    	          message.setContent(msg, "text/html");

    	          Transport transport = session.getTransport("smtp");
    	          
    	              transport.connect("smtp.gmail.com", user, pass);
    	              transport.sendMessage(message, message.getAllRecipients());
                      PreparedStatement pr=con.prepareStatement("update customerProjects set Paid_Amount='"+amount+"' where Customer_ID="+cid+"");
                      pr.executeUpdate();
                      String msg2="Approvel send successfully!";
                      request.getSession().setAttribute("Message", msg2);
                      response.sendRedirect("welcomeMessage.jsp");
                      
    }catch(Exception e)
    {
        e.printStackTrace();
    }}
    public static String generateRandomPassword()
  {
      String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789@";

      String pw = "";
      for (int i=0; i<PASSWORD_LENGTH; i++)
      {
          int index = (int)(RANDOM.nextDouble()*letters.length());
          pw += letters.substring(index, index+1);
      }
      return pw;
  
	}

}
