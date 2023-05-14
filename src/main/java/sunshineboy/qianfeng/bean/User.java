package sunshineboy.qianfeng.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("tb_user")
public class User {
    @TableId
    private int id;
    private String name;
    private double age;
    private String sex;
    private String[] hobby;
    private String text;
}
