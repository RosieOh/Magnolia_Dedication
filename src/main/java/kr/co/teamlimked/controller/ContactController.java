package kr.co.teamlimked.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ContactController {
    @RequestMapping("contact.do")
    public String contact(Model model) {
        return "/contact/contact";
    }
}
