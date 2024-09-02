

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Simple")
public class Simple extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Simple() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		PrintWriter out = response.getWriter(); 
		String str = request.getParameter("uname"); 
		if (str.equals("Java")) 
		{ 
			RequestDispatcher rd = request.getRequestDispatcher("Welcome");
			rd.forward(request, response); 
		} 
		else 
		{
			out.print("Sorry username error--redirecting to login page!"); 
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
	}

}
