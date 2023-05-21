package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sunshineboy.qianfeng.bean.User;
import sunshineboy.qianfeng.service.IndexService;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private IndexService indexService;

    @RequestMapping("/getUserList")
    @ResponseBody
    public List<User> getUserList() {
        return indexService.list();
    }

    @RequestMapping("/del")
    public String del(int id) {
        indexService.removeById(id);
        return "usersIndex";
    }

    @RequestMapping("/add")
    public String add() {
        return "userUpdate";
    }

     @RequestMapping("/upd")
     @ResponseBody
    public ModelAndView upd(int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userUpdate");
        modelAndView.addObject("id", id);
        return modelAndView;
    }

    @RequestMapping("/getUserById")
    @ResponseBody
    public User getUserById(int id) {
        return indexService.getById(id);
    }

    @RequestMapping("/saveUser")
    public String saveUser(@ModelAttribute User user) {
        indexService.saveOrUpdate(user);
        return "redirect:/index";
    }

    @RequestMapping("/userLogin")
    public String userLogin(int id, String password) {
        if (indexService.getById(id).getPassword().equals(password))
            return "redirect:/index";
        return "redirect:/login";
    }
}
