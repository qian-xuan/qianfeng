package sunshineboy.qianfeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/index")
    public String index() {
        return "/index";
    }

    @RequestMapping("/login")
    public String login() {
        return "/login";
    }

    @RequestMapping("/register")
    public String register() {
        return "/register";
    }

    @RequestMapping("/usersInfo")
    public String usersInfo() {
        return "usersInfo";
    }

//    todo: delete
    @RequestMapping("/navbar")
    public String navbar() {
        return "navbar";
    }
}
