package feedbackpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/getallfeedbackservlet")
public class getallfeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<feedbackmodel> allfeedbacks = feedbackcontroller.getAllBook();
		request.setAttribute("allfeedbacks", allfeedbacks);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayfeedback.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
