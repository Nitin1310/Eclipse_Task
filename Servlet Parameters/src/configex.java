

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/configex")
public class configex extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public configex() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ServletConfig config = getServletConfig();
		String str2="";
		out.println("<b>All Value of init Parameters</b><br>");
		Enumeration<String> e2 = config.getInitParameterNames();
		while(e2.hasMoreElements())
		{
			str2=e2.nextElement();
			out.println("init Parameters: "+str2+"<br>");
			out.println("init values: "+config.getInitParameter(str2)+"<br>");
		}
	}

}
