package itempackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/getallitemservlet")
public class getallitemservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<itemmodel> allitems = itemcontroller.getAllBook();
		request.setAttribute("allitems", allitems);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayitem.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
