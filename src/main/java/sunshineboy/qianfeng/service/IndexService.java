package sunshineboy.qianfeng.service;

import java.util.Map;

public interface IndexService {
    Map<String, Object> getUserList();

    void del(int id);
}
