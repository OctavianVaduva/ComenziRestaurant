package restaurant.servlets;

import javax.servlet.*;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/OspatariServlet")
public class OspatariServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        System.out.println("Hello from OspatariServlet.processRequest()");
        RequestDispatcher rd = request.getRequestDispatcher("/src/main/resources/templates/repartizareMese.jsp");
        rd.forward(request, response);
    }
}
