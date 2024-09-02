

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class SQL
 *
 */
@WebListener
public class SQL implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public SQL() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
    	try
        {
        	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
			Connection con=DriverManager.getConnection("jdbc:sqlserver://FUTURE;databaseName=Oakridge","sa","123"); 
			ServletContext sc=arg0.getServletContext();
    		sc.setAttribute("mycon", con); 
        }catch(Exception e)
        {
        	
        }
    }
	
}
