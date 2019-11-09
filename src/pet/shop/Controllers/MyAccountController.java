package pet.shop.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pet.shop.models.Model;
import pet.shop.repositories.UserRepository;


public class MyAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BasicLoader.loadCategoriesAndPartners(request);
		
		HttpSession session = request.getSession();
		Boolean login=(Boolean) session.getAttribute("login");
		
		if(login==null) {
			login=false;
			session.setAttribute("login",login);
			}
		
		if(   request.getParameter("logout")!=null && request.getParameter("logout").equals("logout") ) {
			session.removeAttribute("user");
			login=false;
			session.setAttribute("login",login);
			System.out.println(request.getParameter("logout"));
		}
		System.out.println(login);
		System.out.println(session);
	
		request.getRequestDispatcher("WEB-INF/views/myaccount.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Model user=new UserRepository().findUser(username,password);
		String answer="";
		
		HttpSession session = request.getSession();
		 
		if(user==null) {answer="Your username or password are incorrect";
		request.setAttribute("status", answer);
		
		
		}
		
		if(user!=null) {
			 	Boolean login=true;
		        session.setAttribute("user", user);
		        session.setAttribute("login",login);
		        
		}
		System.out.println("user "+user);
		request.getRequestDispatcher("WEB-INF/views/myaccount.jsp").forward(request, response);
		
	}

}
