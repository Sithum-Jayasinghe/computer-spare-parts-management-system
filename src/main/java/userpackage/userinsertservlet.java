package userpackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/userinsertservlet")
public class userinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		String phone= request.getParameter("phone");
		
		
		boolean isTrue;
		
		isTrue =  usercontroller.insertdata(name, gmail , password, phone);
		
		if(isTrue == true)
		{
			String alertMessage = "Register Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'login.jsp' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
		
	}

}
