package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sunshineboy.qianfeng.bean.User;
import sunshineboy.qianfeng.service.IndexService;

import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/getUserList")
    @ResponseBody
    public Map<String, Object> getUserList() {
        return indexService.getUserList();
    }

    @RequestMapping("/del")
    public String del(int id) {
        indexService.del(id);
        return "index";
    }

    @RequestMapping("/add")
    public String add() {
        return "add";
    }

    @RequestMapping("/addUser")
    public String addUser(User user) {
        indexService.addUser(user);
        return "redirect:/index";
    }

     @RequestMapping("/upd")
     @ResponseBody
    public ModelAndView upd(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/upd");
        modelAndView.addObject("id", id);
        return modelAndView;
    }

    @RequestMapping("/getUserById")
    @ResponseBody
    public User getUserById(int id) {
        return indexService.getUserById(id);
    }

    @RequestMapping("/updUser")
    public String updUser(int id) {
        return "redirect:/index";
    }
}
