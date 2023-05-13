package sunshineboy.qianfeng.bean;

import lombok.Data;

import java.util.List;

@Data
public class User {
    private int id;
    private String name;
    private double age;
    private String sex;
    private List<String> hobby;
    private String text;
}
