package sunshineboy.qianfeng.bean;

import lombok.Data;

@Data
public class User {
    private int id;
    private String name;
    private double age;
    private String sex;
    private String[] hobby;
    private String text;
}
