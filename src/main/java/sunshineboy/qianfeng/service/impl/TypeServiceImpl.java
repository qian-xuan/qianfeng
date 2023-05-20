package sunshineboy.qianfeng.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import sunshineboy.qianfeng.bean.Type;
import sunshineboy.qianfeng.mapper.TypeMapper;
import sunshineboy.qianfeng.service.TypeService;

import java.util.HashMap;
import java.util.Map;

@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements TypeService {
    @Override
    public Map<Integer, String> map() {
        var map = new HashMap<Integer, String>();
        this.list().forEach(t -> map.put(t.getId(), t.getName()));
        return map;
    }
}
