

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class SQL implements ServletContextListener {

    public SQL() {
        // TODO Auto-generated constructor stub
    }

    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

    public void contextInitialized(ServletContextEvent arg0)  { 
        try
        {
        	Class.forName("oracle.jdbc.driver.OracleDriver"); 
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","123"); 
			ServletContext sc=arg0.getServletContext();
    		sc.setAttribute("mycon", con); 
        }catch(Exception e)
        {
        	
        }
    }
	
}
