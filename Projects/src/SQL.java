

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.DriverManager;
import java.sql.Connection;

@WebListener
public class SQL implements ServletContextListener {

    public SQL() {
        // TODO Auto-generated constructor stub
    }

    public void contextInitialized(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    	try {
    		 Class.forName("oracle.jdbc.driver.OracleDriver");
 	        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
    		ServletContext sc=arg0.getServletContext();
    		sc.setAttribute("mycon", con); 
    		
    		
    		
    	}
    	catch(Exception ex)
    	{
    		System.out.println("Error in litener: "+ex);
    	}
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }
	
}
