package sunshineboy.qianfeng.bean;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import org.apache.ibatis.type.ArrayTypeHandler;
import org.apache.ibatis.type.JdbcType;

@Data
@TableName(value = "tb_user", autoResultMap = true)
@KeySequence("tb_user_id_seq")
public class User {
    @TableId(type = IdType.INPUT)
    private int id;
    private String password;
    private String name;
    private double age;
    private String sex;
    @TableField(jdbcType = JdbcType.ARRAY, typeHandler = ArrayTypeHandler.class)
    private String[] hobby;
    private String text;
    private String avatar;
}
