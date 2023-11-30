package kr.co.teamlimked.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/about/*")
@Controller
public class AboutController {
    @GetMapping("introduct.do")
    public String about(Model model) {
        return "/about/introduction";
    }
}
