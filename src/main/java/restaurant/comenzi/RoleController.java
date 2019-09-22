package restaurant.comenzi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleController {

    @RequestMapping("/loginAdmin")
//    @GetMapping("/loginAdmin")
    public String loginAdmin() {
        return "loginAdmin";
    }

    @RequestMapping("/loginOspatar")
//    @GetMapping("/loginOspatar")
    public String loginOspatar() {
        return "loginOspatar";
    }

    @RequestMapping("/loginClient")
//    @GetMapping("/loginClient")
    public String loginClient() {
        return "loginClient";
    }

    @RequestMapping("/afisareMeniu")
//    @GetMapping("/meniu")
    public String meniu() {
        return "meniu";
    }

    @RequestMapping("/comandaCurenta")
//    @GetMapping("/comandaCurenta")
    public String comandaCurenta() {
        return "comandaCurenta";
    }

    @RequestMapping("/repartizareMese")
//    @GetMapping("/repartizareMese")
    public String repartizareMese() {
        return "repartizareMese.jsp";
    }
}
