package sunshineboy.qianfeng.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import sunshineboy.qianfeng.bean.User;

import java.util.List;

public interface IndexMapper extends BaseMapper<User> {

    List<User> getUserList();

    int del(int id);

    int addUser(User user);

//    Map<String, Object> getUserById(int id);
}
