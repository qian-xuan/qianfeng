package sunshineboy.qianfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sunshineboy.qianfeng.bean.Type;
import sunshineboy.qianfeng.service.CommodityService;
import sunshineboy.qianfeng.service.TypeService;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class TypeController {
    @Autowired
    TypeService typeService;
    @Autowired
    CommodityService commodityService;

    public static final String INDEX = "redirect:/type/index";

    @RequestMapping("/index")
    public String index() {
        return "typeIndex";
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

    @RequestMapping("/getType")
    @ResponseBody
    public Type getType(int id) {
        return typeService.getById(id);
    }

    @RequestMapping("/save")
    public String saveType(Type type) {
        typeService.saveOrUpdate(type);
        return INDEX;
    }

    @RequestMapping("/{tid}")
    public ModelAndView typePage(@PathVariable("tid") int tid) {
        var mv = new ModelAndView("index");
        mv.addObject("commodities",
                commodityService.query().eq("type", tid).eq("status", "已上架").list());
        mv.addObject("typeMap", typeService.map());
        return mv;
    }

    @RequestMapping("/add")
    public String addType() {
        return "typeUpdate";
    }

    @RequestMapping("/del")
    public String delType(int id) {
        typeService.removeById(id);
        return INDEX;
    }

    @RequestMapping("/update")
    public ModelAndView updPage(int id) {
        var mv = new ModelAndView("typeUpdate");
        mv.addObject("id", id);
        return mv;
    }
}
