package paymentpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/updatepaymentservlet")
public class updatepaymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String method = request.getParameter("method");
		String amount = request.getParameter("amount");
		String currency = request.getParameter("currency");
		String address = request.getParameter("address");
		
		
		boolean isTrue;
		
		isTrue = paymentcontroller.updatedata(id,name, date, method, amount, currency, address);
		
		if(isTrue == true)
		{
			List<paymentmodel> paymentdetails = paymentcontroller.getById(id);
			request.setAttribute("paymentdetails", paymentdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'getallpaymentservlet' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
	
		
	}

}
