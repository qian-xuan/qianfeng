package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sunshineboy.qianfeng.bean.Commodity;
import sunshineboy.qianfeng.service.CommodityService;

import java.util.List;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    public static final String INDEX = "redirect:/assignmentIndex";
    @Autowired
    CommodityService service;

    @RequestMapping("/save")
    public String save(Commodity commodity) {
        service.save(commodity);
        return INDEX;
    }

    @RequestMapping("/del")
    public String delete(int id) {
        service.removeById(id);
        return INDEX;
    }

    @RequestMapping("/list")
    @ResponseBody
    public List<Commodity> list() {
        return service.list();
    }
}
