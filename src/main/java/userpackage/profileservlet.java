package userpackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserPackage.UserModel;


@WebServlet("/profileservlet")
public class profileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProcessRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProcessRequest(request, response);
	}

	
	private void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RETRIEVE USER INFORMATION FROM SESSION
		usermodel user = (usermodel) request.getSession().getAttribute("user");
		
		if(user !=null)
		{
			//FORWARD USER DATA TO PROFILE.JSP
			request.setAttribute("user",user);
			request.getRequestDispatcher("profile.jsp").forward(request, response);
			//request.getRequestDispatcher("Insert.jsp").forward(request, response);
			// WE CAN CHANGE TI INSERT FORM
			
		}else {
			//HANDLE CASE WHERE USER IS NOT LOGGED IN
			response.sendRedirect("login.jsp");
		}
		
	}
}
