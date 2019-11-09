package pet.shop.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AboutusController extends HttpServlet{
	
	
	
	private static final long serialVersionUID = 8206242379079225361L;
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		BasicLoader.loadCategoriesAndPartners(request);
		request.getRequestDispatcher("WEB-INF/views/Aboutus.jsp").forward(request, response);
	}
	

	
}