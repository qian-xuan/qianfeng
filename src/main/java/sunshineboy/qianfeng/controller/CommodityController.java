package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sunshineboy.qianfeng.bean.Commodity;
import sunshineboy.qianfeng.bean.Type;
import sunshineboy.qianfeng.service.CommodityService;
import sunshineboy.qianfeng.service.TypeService;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    public static final String INDEX = "redirect:/commodity/manage";
    public static final String UPDATE = "commodityUpdate";
    @Autowired
    CommodityService service;

    @Autowired
    TypeService typeService;

    @RequestMapping("/manage")
    public String index() {
        return "commodityIndex";
    }

    @RequestMapping("/save")
    public String save(Commodity commodity) {
        service.saveOrUpdate(commodity);
        return INDEX;
    }

    @RequestMapping("/del")
    public String delete(int id) {
        service.removeById(id);
        return INDEX;
    }

    @RequestMapping("/dels")
    public String deleteAll(int[] id) {
        for (var i : id) service.removeById(i);
        return INDEX;
    }

    @RequestMapping("/list")
    @ResponseBody
    public List<Commodity> list() {
        return service.list();
    }

    @RequestMapping("/get")
    @ResponseBody
    public Commodity get(int id) {
        return service.getById(id);
    }

    @RequestMapping("/add")
    public String addPage() {
        return UPDATE;
    }

    @RequestMapping("/upd")
    public ModelAndView updPage(int id) {
        var mv = new ModelAndView(UPDATE);
        mv.addObject("id", id);
        return mv;
    }

    @RequestMapping("/getTypes")
    @ResponseBody
    public List<Type> getTypes() {
        return typeService.list();
    }

    @RequestMapping("/getTypeMap")
    @ResponseBody
    public Map<Integer, String> getTypeMap() {
        return typeService.map();
    }
}
