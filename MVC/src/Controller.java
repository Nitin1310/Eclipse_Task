

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher rd =
				request.getRequestDispatcher("View.jsp");
				Model model = new Model();
				String name = request.getParameter("name");
				if (name == "" || name.equals("null")) {
				name = "Secret";
				 }
				model.setName(name);
				request.setAttribute("model", model);
				rd.forward(request, response);
	}

}
