package sunshineboy.qianfeng.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sunshineboy.qianfeng.bean.User;
import sunshineboy.qianfeng.mapper.IndexMapper;
import sunshineboy.qianfeng.service.IndexService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    IndexMapper indexMapper;
    @Override
    public Map<String, Object> getUserList() {
        Map<String, Object> map = new HashMap<>();
        List<User> users = indexMapper.getUserList();
        map.put("data", users);
        return map;
    }
}
