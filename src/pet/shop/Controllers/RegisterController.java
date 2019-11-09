package pet.shop.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;

import pet.shop.models.UserModel;
import pet.shop.repositories.UserRepository;

public class RegisterController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		BasicLoader.loadCategoriesAndPartners(request);
		request.getRequestDispatcher("WEB-INF/views/register.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String company=req.getParameter("company");
		String adress=req.getParameter("adress");
		
		UserModel user=new UserModel(username, password, email, phone, adress, company);
	new UserRepository().create(user);
	HttpSession session = req.getSession();
	Boolean login=true;
    session.setAttribute("user", user);
    session.setAttribute("login",login);
	req.getRequestDispatcher("WEB-INF/views/myaccount.jsp").forward(req, resp);
	}
	 
	
}
