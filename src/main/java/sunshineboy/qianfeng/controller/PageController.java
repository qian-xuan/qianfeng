package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import sunshineboy.qianfeng.service.CommodityService;

@Controller
public class PageController {
    @Autowired
    CommodityService service;
    @RequestMapping("/index")
    public ModelAndView index() {
        var mv = new ModelAndView("/index");
        var commodities = service.list();
        mv.addObject("commodities", commodities);
        return mv;
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
        return "/navbar";
    }

    @RequestMapping("/assignmentIndex")
    public String assignmentIndex() {
        return "/assignmentIndex";
    }

    @RequestMapping("/layout")
    public String layout() {
        return "/layout";
    }
}
