package feedbackpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updatefeedbackservlet")
public class updatefeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String type = request.getParameter("type");
		String rating = request.getParameter("rating");
		String message = request.getParameter("message");
		
		
		boolean isTrue;
		
		isTrue = feedbackcontroller.updatedata(id, name, email, type, rating, message);
		
		if(isTrue == true)
		{
			List<feedbackmodel> feedbackdetails = feedbackcontroller.getById(id);
			request.setAttribute("feedbackdetails", feedbackdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'getallfeedbackservlet' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
		
		
	}

}
