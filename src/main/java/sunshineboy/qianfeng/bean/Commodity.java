package sunshineboy.qianfeng.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "tb_commodity", autoResultMap = true)
@KeySequence("tb_commodity_id_seq")
public class Commodity {
    @TableId(type = IdType.INPUT)
    private int id;
    private int type;
    private String name;
    private long price;
    private String status;
    private int inventory;
    private String describe;
    private String picture;
}