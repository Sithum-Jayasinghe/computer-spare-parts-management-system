package supplierpackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/insertsupplierservlet")
public class insertsupplierservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
  

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String address = request.getParameter("address");
		String category = request.getParameter("category");
		String company = request.getParameter("company");
		
		boolean isTrue;
		
		isTrue =  suppliercontroller.insertdata(name, number , address, category, company);
		
		if(isTrue == true)
		{
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'getallsupplierservlet' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
		
	}
	
	
	
	

	
}
