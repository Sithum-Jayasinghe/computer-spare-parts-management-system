package userpackage;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String gmail = request.getParameter("gmail");
        String password = request.getParameter("password");

        try {
            List<usermodel> userlogin = usercontroller.loginValidate(gmail, password);

            if (userlogin != null && !userlogin.isEmpty()) {
                // Create session and store user info
                HttpSession session = request.getSession();
                session.setAttribute("user", userlogin.get(0)); // store the logged-in user

                // Redirect to home page
                response.sendRedirect("home.jsp");

            } else {
                // Invalid login, show alert and redirect back
                response.setContentType("text/html;charset=UTF-8");
                response.getWriter().println("<script type=\"text/javascript\">");
                response.getWriter().println("alert('Invalid Credentials, Please try again');");
                response.getWriter().println("window.location.href = 'login.jsp';");
                response.getWriter().println("</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("wrong.jsp"); // Optional: handle error page
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
