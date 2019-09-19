package restaurant.comenzi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/loginAdmin")
//    @GetMapping("/loginAdmin")
    public String loginAdmin() {
        return "loginAdmin.jsp";
    }

    @RequestMapping("/loginClient")
//    @GetMapping("/loginClient")
    public String loginClient() {
        return "loginClient";
    }

    @RequestMapping("/repartizareMese")
//    @GetMapping("/repartizareMese")
    public String repartizareMese() {
        return "repartizareMese";
    }
}
