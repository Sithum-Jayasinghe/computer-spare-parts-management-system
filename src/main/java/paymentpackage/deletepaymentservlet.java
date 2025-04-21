package paymentpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import supplierpackage.suppliercontroller;
import supplierpackage.suppliermodel;


@WebServlet("/deletepaymentservlet")
public class deletepaymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = paymentcontroller.deletedata(id);
		if(isTrue == true)
		{
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+" window.location.href = 'getallpaymentservlet'</script>");
		}else {
			List<suppliermodel> paymentdetails = suppliercontroller.getById(id);
			request.setAttribute("paymentdetails", paymentdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
