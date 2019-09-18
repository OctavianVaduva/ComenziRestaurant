package restaurant.comenzi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
//@Controller
public class LoginController {

    @RequestMapping("/loginAdmin")
//    @GetMapping("/loginAdmin")
    public String loginAdmin() {
        return "loginAdmin";
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
