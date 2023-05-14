package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
        return "index";
    }
}
