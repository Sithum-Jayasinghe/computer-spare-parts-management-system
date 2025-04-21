package feedbackpackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itempackage.itemcontroller;


@WebServlet("/insertfeedbackservlet")
public class insertfeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
  

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String type = request.getParameter("type");
		String rating = request.getParameter("rating");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue =  feedbackcontroller.insertdata(name, email , type, rating, message);
		
		if(isTrue == true)
		{
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'getallfeedbackservlet' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
		
		
		
	}

}
