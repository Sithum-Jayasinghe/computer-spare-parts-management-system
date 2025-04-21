package itempackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import supplierpackage.suppliercontroller;


@WebServlet("/insertitemservlet")
public class insertitemservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue =  itemcontroller.insertdata(name, category , quantity, price, date);
		
		if(isTrue == true)
		{
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert ('"+alertMessage+"');  window.location.href = 'getallitemservlet' </script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request , response);
		}
		
	}

}
