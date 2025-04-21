package userpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet(name = "accountdeleteservlet", urlPatterns = { "/accountdeleteservlet" })
public class accountdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue = usercontroller.deleteAccount(id);
		
		if(isTrue == true)
		{
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+" window.location.href = 'login.jsp'</script>");
		}else {
			
			List<usermodel> userDetails = usercontroller.getById(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}
