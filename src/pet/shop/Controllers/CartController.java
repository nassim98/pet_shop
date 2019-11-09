package pet.shop.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BasicLoader.loadCategoriesAndPartners(request);
		HttpSession session = request.getSession();
		Boolean login=(Boolean) session.getAttribute("login");
		if(login)
		request.getRequestDispatcher("WEB-INF/views/cart.jsp").forward(request, response);
		else {
			request.getRequestDispatcher("WEB-INF/views/myaccount.jsp").forward(request, response);
		}
	}
}
