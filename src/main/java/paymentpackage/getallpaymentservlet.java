package paymentpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/getallpaymentservlet")
public class getallpaymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<paymentmodel> allpayments = paymentcontroller.getAllBook();
		request.setAttribute("allpayments", allpayments);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("displaypayment.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

}
