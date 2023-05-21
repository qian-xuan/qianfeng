package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import sunshineboy.qianfeng.service.CommodityService;
import sunshineboy.qianfeng.service.TypeService;

@Controller
public class PageController {
    @Autowired
    CommodityService commodityService;
    @Autowired
    TypeService typeService;
    @RequestMapping("/index")
    public ModelAndView index() {
        var mv = new ModelAndView("/index");
        mv.addObject("commodities", commodityService.query().eq("status", "已上架").list());
        mv.addObject("typeMap", typeService.map());
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
        return "commodityIndex";
    }

    @RequestMapping("/layout")
    public String layout() {
        return "/layout";
    }
}
