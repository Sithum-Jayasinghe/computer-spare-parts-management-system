package supplierpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/getallsupplierservlet")
public class getallsupplierservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<suppliermodel> allsuppliers = suppliercontroller.getAllBook();
		request.setAttribute("allsuppliers", allsuppliers);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("displaysupplier.jsp");
		dispatcher.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	



}
