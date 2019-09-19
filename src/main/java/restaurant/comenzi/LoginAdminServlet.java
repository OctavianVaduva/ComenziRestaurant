package restaurant.comenzi;

import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        System.out.println("Hello from LoginAdminServlet.processRequest()");

        // Creating a RequestDispatcher object to dispatch the request to another resourcee
        // Creem un obiect rd de tip RequestDispatcher
        RequestDispatcher rd = request.getRequestDispatcher("/templates/dailyConfiguration"); // public interface RequestDispatcher
        rd.forward(request, response); // transmitem raspunsul care va genera deschiderea paginii dailyConfiguration.html
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("LoginAdminServlet.doPost()");
        String introducedUsername = request.getParameter("username"); // solicita de la form username
        String introducedPassword = request.getParameter("password"); // solicita de la form password

        if (hasRight(introducedUsername, introducedPassword)) {
            // raspunsul hasTrue == true solicita executarea procesului
            System.out.println("     doPost() apeleaza processRequest(request, response)");
            processRequest(request, response);
//            @RequestMapping("/dailyConfiguration"
//            public String dailyConfiguration() {
//                return "dailyConfiguration";
//            }

        } else {
            System.out.println("User si/sau parola incorecte");  // TODO: trimite mesaj: Logon Denied
            request.setAttribute("Mesaj eroare", "Logon Denied - User si/sau Password incorecte!");
            RequestDispatcher rd = request.getRequestDispatcher("/loginAdmin");
            rd.forward(request, response);
        }
    }

    // Valori introduse manual pentru a putea verifica functionatii acceptarii accesului
    private static String username = "admin"; //TODO: de gasit solutia de postare in alta parte, pentru mai multe combinatii USER / PASSWORD
    private static String password = "admin";

    private boolean hasRight(String introducedUsername, String introducedPaswword) {
        //verificare concordanta username - parola. Din ratiuni didactice, valorile de control sunt prestabilite mai sus

        boolean hasRight = false;
        System.out.println("Hello from hasRight");
        if(introducedUsername.equals(username) && introducedPaswword.equals(password)) {
            hasRight = true;
        }
        return hasRight;
    }
}
