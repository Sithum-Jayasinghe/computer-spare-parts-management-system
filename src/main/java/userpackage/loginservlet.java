package userpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		
		try {
			List<usermodel> userlogin = usercontroller.loginValidate(gmail, password);
			if(userlogin != null && !userlogin.isEmpty())
			{
				request.getSession().setAttribute("user", userlogin.get(0));
				response.sendRedirect("home.jsp "); // change pages
				
				
			}else {
				
				String alertMessage = "Invalied Credentials , Please try again";
				response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'login.jsp' </script>");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();	
			
		}
	}

}
