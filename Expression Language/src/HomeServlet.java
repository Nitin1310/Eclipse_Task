

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Person person = new Employee();
        person.setName("Shailendra");
         
        request.setAttribute("person", person);
         
        Employee emp = new Employee();
        Address add = new Address();
        add.setAddress("India");
        emp.setAddress(add);
        emp.setId(1);
        emp.setName("Shailendra Singh");
         
        HttpSession session = request.getSession();
        session.setAttribute("employee", emp);
         Cookie c = new Cookie("User.Cookie","Tomcat User");
        response.addCookie(c);
        getServletContext().setAttribute("User.Cookie","Tomcat User");
         
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/home.jsp");
        rd.forward(request, response);
	}

}
