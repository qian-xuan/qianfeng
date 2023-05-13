package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    public Map<String, Object> getUserList() {
        return null;
    }
}
