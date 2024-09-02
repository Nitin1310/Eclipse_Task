

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InfoServlet")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public InfoServlet() {
        super();
   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		ServletContext context = getServletContext();
		String email = context.getInitParameter("email");
		out.println("<b>Value of context parameter</b><br>");
		out.println(email);
		String str="";
		out.println("<br><b>All Value of context Parameters</b><br>");
			Enumeration<String> e = context.getInitParameterNames();
			while(e.hasMoreElements())
			{
				str= e.nextElement();
				out.println("Parameters: "+str+"<br>");
				out.println("Values: "+context.getInitParameter(str)+"<br>");
			}
		
	}

}
