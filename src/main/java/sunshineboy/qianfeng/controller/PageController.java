package sunshineboy.qianfeng.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
        var commodities = commodityService.list();
        mv.addObject("commodities", commodities);
        mv.addObject("typeMap", typeService.map());
        return mv;
    }

    @RequestMapping("/type/{tid}")
    public ModelAndView typePage(@PathVariable("tid") int tid) {
        var mv = new ModelAndView("/index");
        mv.addObject("commodities", commodityService.query().eq("type", tid).list());
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
        return "/assignmentIndex";
    }

    @RequestMapping("/layout")
    public String layout() {
        return "/layout";
    }
}
