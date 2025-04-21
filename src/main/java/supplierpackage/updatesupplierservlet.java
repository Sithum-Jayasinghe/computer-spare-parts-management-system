package supplierpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/updatesupplierservlet")
public class updatesupplierservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String address = request.getParameter("address");
		String category = request.getParameter("category");
		String company = request.getParameter("company");
		
		
		boolean isTrue;
		
		isTrue = suppliercontroller.updatedata(id, name, number, address, category, company);
		
		if(isTrue == true)
		{
			List<suppliermodel> supplierdetails = suppliercontroller.getById(id);
			request.setAttribute("supplierdetails", supplierdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'getallsupplierservlet' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
	}

}
