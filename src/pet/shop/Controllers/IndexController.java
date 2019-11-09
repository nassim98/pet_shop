package pet.shop.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexController extends HttpServlet {

	private static final long serialVersionUID = 8206242379079225361L;

	
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BasicLoader.loadCategoriesAndPartners(request);
		HttpSession session = request.getSession();
		Boolean login=(Boolean) session.getAttribute("login");
		
		if(login==null) {
			login=false;
			session.setAttribute("login",login);
			}
		
		request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request, response);
	}

}