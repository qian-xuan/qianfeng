package sunshineboy.qianfeng.mapper;

import org.apache.ibatis.annotations.Mapper;
import sunshineboy.qianfeng.bean.User;

import java.util.List;

@Mapper
public interface IndexMapper {

    List<User> getUserList();

    int del(int id);
}
