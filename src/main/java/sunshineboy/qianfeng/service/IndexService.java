package sunshineboy.qianfeng.service;

import sunshineboy.qianfeng.bean.User;

import java.util.Map;

public interface IndexService {
    Map<String, Object> getUserList();

    void del(int id);

    void addUser(User user);
}
