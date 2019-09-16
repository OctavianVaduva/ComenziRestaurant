package restaurant.comenzi;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PaginaPornire {

    @RequestMapping("/hello")
    public String hello() {
        return ("Bine ati venit la Restaurantul \"SDA-7\"!");
    }
}
