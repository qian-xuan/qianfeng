package sunshineboy.qianfeng.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface IndexMapper {

    Map<String, Object> getUserList();
}
