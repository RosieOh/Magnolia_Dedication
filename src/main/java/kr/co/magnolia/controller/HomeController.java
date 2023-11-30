package kr.co.magnolia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    //http:localhost:8081/pro03_war => / => /WEB-INF/views/index.jsp

    @RequestMapping("/")
    public String home(Model model) {
        return "/index";
    }
}
